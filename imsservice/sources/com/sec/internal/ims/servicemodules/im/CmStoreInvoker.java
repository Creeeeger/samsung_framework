package com.sec.internal.ims.servicemodules.im;

import android.util.Log;
import com.sec.ims.extensions.ReflectionUtils;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.ims.cmstore.CloudMessageServiceWrapper;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.interfaces.ims.core.ISimManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Hashtable;
import java.util.List;

/* loaded from: classes.dex */
public class CmStoreInvoker {
    private static final String LOG_TAG = "CmStoreInvoker";
    private static Hashtable<Integer, Object> mGetCMSServiceObj = new Hashtable<>(2);
    Class<?> mCldMsgServiceClass = null;
    Class<?> mCmsModuleClass = null;
    Method mGetCMSService = null;
    ImModule mImModule;

    CmStoreInvoker(ImModule imModule) {
        this.mImModule = imModule;
    }

    public boolean isReady(int i) {
        try {
            if (this.mCmsModuleClass == null) {
                this.mCmsModuleClass = Class.forName("com.sec.internal.ims.cmstore.CmsModule");
            }
            if (this.mGetCMSService == null) {
                this.mGetCMSService = this.mCmsModuleClass.getMethod("getCMSServiceByPhoneID", Integer.TYPE);
            }
            if (mGetCMSServiceObj.get(Integer.valueOf(i)) == null) {
                Log.i(LOG_TAG, "isReady, mGetCMSServiceObj added for phoneid: " + i);
                if (this.mGetCMSService.invoke(null, Integer.valueOf(i)) != null) {
                    mGetCMSServiceObj.put(Integer.valueOf(i), this.mGetCMSService.invoke(null, Integer.valueOf(i)));
                }
            }
            if (this.mCldMsgServiceClass == null) {
                this.mCldMsgServiceClass = CloudMessageServiceWrapper.class;
            }
            return (this.mCldMsgServiceClass == null || this.mCmsModuleClass == null || mGetCMSServiceObj.get(Integer.valueOf(i)) == null) ? false : true;
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | SecurityException | InvocationTargetException e) {
            e.printStackTrace();
            return false;
        }
    }

    protected synchronized void onCreateSession(int i, ImSession imSession) {
        if (isCmStoreEnabled(i)) {
            try {
                Log.i(LOG_TAG, "onCreateSession");
                Method method = this.mCldMsgServiceClass.getMethod("createSession", String.class);
                Method method2 = this.mCldMsgServiceClass.getMethod("createParticipant", String.class);
                ReflectionUtils.invoke(method, mGetCMSServiceObj.get(Integer.valueOf(i)), new Object[]{imSession.getChatId()});
                ReflectionUtils.invoke(method2, mGetCMSServiceObj.get(Integer.valueOf(i)), new Object[]{imSession.getChatId()});
            } catch (IllegalStateException | NoSuchMethodException | SecurityException e) {
                Log.e(LOG_TAG, "call cloud message service exception. " + e);
            }
        }
    }

    protected synchronized void onReceiveRcsMessage(String str, int i, String str2) {
        int phoneIdByIMSI = getPhoneIdByIMSI(str);
        if (isCmStoreEnabled(phoneIdByIMSI)) {
            try {
                Log.i(LOG_TAG, "onReceiveRcsMessage");
                invokeMethod(this.mCldMsgServiceClass.getMethod("receiveRCSMessage", Integer.TYPE, String.class, String.class), phoneIdByIMSI, i, str2, getLine(phoneIdByIMSI));
            } catch (IllegalStateException | NoSuchMethodException | SecurityException e) {
                Log.e(LOG_TAG, "call cloud message service exception. " + e);
            }
        }
    }

    protected synchronized void onReadRcsMessageList(int i, List<String> list) {
        if (isCmStoreEnabled(i) && list != null) {
            try {
                Log.i(LOG_TAG, "onReadRcsMessageList: list " + list);
                invokeMethod(this.mCldMsgServiceClass.getMethod("readRCSMessageList", List.class), i, list);
            } catch (IllegalStateException | NoSuchMethodException | SecurityException e) {
                Log.e(LOG_TAG, "call cloud message service exception. " + e);
            }
        }
    }

    protected synchronized void onCancelRcsMessageList(int i, List<String> list) {
        if (isCmStoreEnabled(i) && list != null) {
            try {
                Log.i(LOG_TAG, "onCancelRcsMessageList: list " + list);
                invokeMethod(this.mCldMsgServiceClass.getMethod("cancelRCSMessageList", List.class), i, list);
            } catch (NoSuchMethodException e) {
                Log.e(LOG_TAG, "call cloud message service exception. " + e);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public int getPhoneIdByIMSI(String str) {
        return this.mImModule.getPhoneIdByIMSI(str);
    }

    protected synchronized void onDeleteRcsMessagesUsingMsgId(List<String> list, String str) {
        int phoneIdByIMSI = getPhoneIdByIMSI(str);
        if (isCmStoreEnabled(phoneIdByIMSI) && list != null) {
            try {
                Log.i(LOG_TAG, "deleteMessagesforCloudSyncUsingMsgId: list " + list);
                invokeMethod(this.mCldMsgServiceClass.getMethod("deleteRCSMessageListUsingMsgId", List.class), phoneIdByIMSI, list);
            } catch (IllegalStateException | NoSuchMethodException | SecurityException e) {
                Log.e(LOG_TAG, "call cloud message service exception. " + e);
            }
        }
    }

    protected synchronized void onDeleteRcsMessagesUsingImdnId(List<String> list, String str) {
        int phoneIdByIMSI = getPhoneIdByIMSI(str);
        if (isCmStoreEnabled(phoneIdByIMSI) && list != null) {
            try {
                Log.i(LOG_TAG, "deleteMessagesforCloudSyncUsingImdnId: list " + list);
                invokeMethod(this.mCldMsgServiceClass.getMethod("deleteRCSMessageListUsingImdnId", List.class), phoneIdByIMSI, list);
            } catch (IllegalStateException | NoSuchMethodException | SecurityException e) {
                Log.e(LOG_TAG, "call cloud message service exception. " + e);
            }
        }
    }

    protected synchronized void onDeleteRcsMessagesUsingChatId(List<String> list, String str) {
        int phoneIdByIMSI = getPhoneIdByIMSI(str);
        if (isCmStoreEnabled(phoneIdByIMSI) && list != null) {
            try {
                Log.i(LOG_TAG, "onDeleteRcsMessagesUsingChatId: list " + list);
                ReflectionUtils.invoke(this.mCldMsgServiceClass.getMethod("deleteRCSMessageListUsingChatId", List.class), mGetCMSServiceObj.get(Integer.valueOf(phoneIdByIMSI)), new Object[]{list});
            } catch (IllegalStateException | NoSuchMethodException | SecurityException e) {
                Log.e(LOG_TAG, "call cloud message service exception. " + e);
            }
        }
    }

    protected synchronized void onSentMessage(String str, int i, String str2) {
        int phoneIdByIMSI = getPhoneIdByIMSI(str);
        String line = getLine(phoneIdByIMSI);
        if (isCmStoreEnabled(phoneIdByIMSI)) {
            Log.i(LOG_TAG, "onSentMessage for cloud sync: " + i);
            try {
                invokeMethod(this.mCldMsgServiceClass.getMethod("sentRCSMessage", Integer.TYPE, String.class, String.class), phoneIdByIMSI, i, str2, line);
            } catch (IllegalStateException | NoSuchMethodException | SecurityException e) {
                Log.e(LOG_TAG, "call cloud message service exception. " + e);
            }
        }
    }

    protected synchronized void notifyFtEvent(String str, int i, String str2, ImDirection imDirection) {
        if (ImDirection.INCOMING == imDirection) {
            onReceiveRcsMessage(str, i, str2);
        } else if (!CmsUtil.isMcsSupported(this.mImModule.getContext(), this.mImModule.getPhoneIdByIMSI(str))) {
            onSentMessage(str, i, str2);
        }
    }

    private void invokeMethod(Method method, int i, int i2, String str, String str2) {
        ReflectionUtils.invoke(method, mGetCMSServiceObj.get(Integer.valueOf(i)), new Object[]{Integer.valueOf(i2), str, str2});
    }

    private void invokeMethod(Method method, int i, List<String> list) {
        ReflectionUtils.invoke(method, mGetCMSServiceObj.get(Integer.valueOf(i)), new Object[]{list});
    }

    private String getLine(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot == null) {
            Log.e(LOG_TAG, "getLine: simManager is null");
            return null;
        }
        return simManagerFromSimSlot.getLine1Number();
    }

    private boolean isCmStoreEnabled(int i) {
        return (CmsUtil.isMcsSupported(this.mImModule.getContext(), i) || (this.mImModule.getRcsStrategy(i) != null && this.mImModule.getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.CENTRAL_MSG_STORE))) && isReady(i);
    }
}
