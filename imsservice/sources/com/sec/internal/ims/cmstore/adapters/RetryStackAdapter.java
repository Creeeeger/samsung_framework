package com.sec.internal.ims.cmstore.adapters;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.utils.CloudMessagePreferenceConstants;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.ambs.globalsetting.BaseProvisionAPIRequest;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OptionalDataException;
import java.util.Stack;

/* loaded from: classes.dex */
public class RetryStackAdapter {
    private static final RetryStackAdapter sInstance = new RetryStackAdapter();
    private MessageStoreClient mStoreClient;
    private Stack<IHttpAPICommonInterface> mStack = new Stack<>();
    public String TAG = RetryStackAdapter.class.getSimpleName();

    public static RetryStackAdapter getInstance() {
        return sInstance;
    }

    public synchronized boolean checkRequestRetried(IHttpAPICommonInterface iHttpAPICommonInterface) {
        Stack<IHttpAPICommonInterface> stack = this.mStack;
        if (stack != null && !stack.empty()) {
            return this.mStack.peek().getClass().getSimpleName().equals(iHttpAPICommonInterface.getClass().getSimpleName());
        }
        return false;
    }

    public synchronized IHttpAPICommonInterface getLastFailedRequest() {
        Stack<IHttpAPICommonInterface> stack = this.mStack;
        if (stack != null && !stack.empty()) {
            return this.mStack.peek();
        }
        return null;
    }

    public synchronized boolean searchAndPush(IHttpAPICommonInterface iHttpAPICommonInterface) {
        if (iHttpAPICommonInterface != null) {
            if (this.mStack != null && (iHttpAPICommonInterface instanceof BaseProvisionAPIRequest)) {
                boolean checkRequestRetried = checkRequestRetried(iHttpAPICommonInterface);
                Log.i(this.TAG, "Retried: " + checkRequestRetried);
                if (checkRequestRetried) {
                    return false;
                }
                push(iHttpAPICommonInterface);
                return true;
            }
        }
        return false;
    }

    private void push(IHttpAPICommonInterface iHttpAPICommonInterface) {
        if (iHttpAPICommonInterface == null) {
            return;
        }
        this.mStack.push(iHttpAPICommonInterface);
        saveRetryStack();
    }

    public synchronized IHttpAPICommonInterface pop() {
        Stack<IHttpAPICommonInterface> stack = this.mStack;
        if (stack != null && !stack.empty()) {
            IHttpAPICommonInterface pop = this.mStack.pop();
            saveRetryStack();
            return pop;
        }
        return null;
    }

    public synchronized void saveRetryLastFailedTime(long j) {
        this.mStoreClient.getPrerenceManager().saveLastRetryTime(j);
    }

    public synchronized void clearRetryHistory() {
        Log.i(this.TAG, "clearRetryCounter: retry history cleared");
        Stack<IHttpAPICommonInterface> stack = this.mStack;
        if (stack != null) {
            stack.clear();
            saveRetryStack();
        }
        this.mStoreClient.getPrerenceManager().removeKey(CloudMessagePreferenceConstants.RETRY_TOTAL_COUNTER);
        this.mStoreClient.getPrerenceManager().removeKey(CloudMessagePreferenceConstants.LAST_RETRY_TIME);
    }

    public synchronized boolean isEmpty() {
        return this.mStack.isEmpty();
    }

    private void saveRetryStack() {
        Log.i(this.TAG, "save retryStack");
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(this.mStack);
            objectOutputStream.flush();
            this.mStoreClient.getPrerenceManager().saveRetryStackData(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0));
        } catch (IOException e) {
            Log.e(this.TAG, e.getMessage());
            e.printStackTrace();
        }
    }

    public boolean isRetryTimesFinished(ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        int totalRetryCounter = this.mStoreClient.getPrerenceManager().getTotalRetryCounter();
        Log.i(this.TAG, "totalCounter: " + totalRetryCounter);
        return this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getMaxRetryCounter() <= totalRetryCounter;
    }

    public void retryApi(IHttpAPICommonInterface iHttpAPICommonInterface, IAPICallFlowListener iAPICallFlowListener, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        if (iAPICallFlowListener == null) {
            return;
        }
        Log.i(this.TAG, "retryApi: " + iHttpAPICommonInterface.getClass().getSimpleName());
        this.mStoreClient.getHttpController().execute(iHttpAPICommonInterface.getRetryInstance(iAPICallFlowListener, this.mStoreClient, iCloudMessageManagerHelper, iRetryStackAdapterHelper));
    }

    public synchronized boolean retryLastApi(IAPICallFlowListener iAPICallFlowListener, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        Stack<IHttpAPICommonInterface> stack = this.mStack;
        IHttpAPICommonInterface peek = (stack == null || stack.isEmpty() || iAPICallFlowListener == null) ? null : this.mStack.peek();
        if (peek == null) {
            return false;
        }
        Log.i(this.TAG, "retryLastApi: " + peek.getClass().getSimpleName());
        this.mStoreClient.getHttpController().execute(peek.getRetryInstance(iAPICallFlowListener, this.mStoreClient, iCloudMessageManagerHelper, iRetryStackAdapterHelper));
        return true;
    }

    public synchronized void initRetryStackAdapter(MessageStoreClient messageStoreClient) {
        this.mStoreClient = messageStoreClient;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        String retryStackData = this.mStoreClient.getPrerenceManager().getRetryStackData();
        try {
            try {
                if (!TextUtils.isEmpty(retryStackData)) {
                    this.mStack = (Stack) new ObjectInputStream(new ByteArrayInputStream(Base64.decode(retryStackData, 0))).readObject();
                }
            } catch (OptionalDataException e) {
                Log.e(getClass().getSimpleName(), e.getMessage());
            } catch (IllegalArgumentException e2) {
                Log.e(getClass().getSimpleName(), e2.getMessage());
                this.mStack = new Stack<>();
                clearRetryHistory();
            }
        } catch (IOException e3) {
            Log.e(getClass().getSimpleName(), e3.getMessage());
        } catch (ClassNotFoundException e4) {
            Log.e(getClass().getSimpleName(), e4.getMessage());
        }
    }
}
