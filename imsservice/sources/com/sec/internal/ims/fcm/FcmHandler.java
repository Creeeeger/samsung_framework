package com.sec.internal.ims.fcm;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.sec.internal.ims.fcm.interfaces.IFcmEventListener;
import com.sec.internal.ims.fcm.interfaces.IFcmHandler;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class FcmHandler implements IFcmHandler {
    public static final String API_KEY = "AIzaSyC9rGRRr3J16mn510MIjZx0DbCEbwesCbM";
    public static final String FIREBASE_URL = "https://fir-e287d.firebaseio.com";
    private static final String LOG_TAG = "FcmHandler";
    public static final String MOBILESDK_APP_ID = "1:907837128383:android:63ec13a18eb17af2";
    public static final String PROJECT_ID = "fir-e287d";
    public static final String PROJECT_NUMBER = "907837128383";
    public static final String STORAGE_BUCKET = "fir-e287d.appspot.com";
    private List<IFcmEventListener> mFcmEventListeners = new ArrayList();

    public FcmHandler(Context context) {
        try {
            FirebaseApp.initializeApp(context, new FirebaseOptions.Builder().setApplicationId(MOBILESDK_APP_ID).setApiKey(API_KEY).setDatabaseUrl(FIREBASE_URL).setGcmSenderId(PROJECT_NUMBER).setProjectId(PROJECT_ID).setStorageBucket(STORAGE_BUCKET).build());
            IMSLog.i(LOG_TAG, "FirebaseApp initialization successful");
        } catch (Exception e) {
            IMSLog.e(LOG_TAG, "FirebaseApp initialization unsuccessful: " + e.getMessage());
        }
    }

    @Override // com.sec.internal.ims.fcm.interfaces.IFcmHandler
    public void registerFcmEventListener(IFcmEventListener iFcmEventListener) {
        unregisterFcmEventListener(iFcmEventListener);
        IMSLog.i(LOG_TAG, "registerFcmEventListener: fcmEventListener: " + iFcmEventListener);
        this.mFcmEventListeners.add(iFcmEventListener);
    }

    @Override // com.sec.internal.ims.fcm.interfaces.IFcmHandler
    public void unregisterFcmEventListener(IFcmEventListener iFcmEventListener) {
        IMSLog.i(LOG_TAG, "unregisterFcmEventListener: fcmEventListener: " + iFcmEventListener);
        this.mFcmEventListeners.remove(iFcmEventListener);
    }

    @Override // com.sec.internal.ims.fcm.interfaces.IFcmHandler
    public void onMessageReceived(Context context, String str, Map map) {
        IMSLog.i(LOG_TAG, "onMessageReceived:");
        for (IFcmEventListener iFcmEventListener : this.mFcmEventListeners) {
            IMSLog.i(LOG_TAG, "onMessageReceived: listener: " + iFcmEventListener);
            iFcmEventListener.onMessageReceived(context, str, map);
        }
    }

    @Override // com.sec.internal.ims.fcm.interfaces.IFcmHandler
    public void onTokenRefresh(Context context) {
        IMSLog.i(LOG_TAG, "onTokenRefresh:");
        for (IFcmEventListener iFcmEventListener : this.mFcmEventListeners) {
            IMSLog.i(LOG_TAG, "onTokenRefresh: listener: " + iFcmEventListener);
            iFcmEventListener.onTokenRefresh(context);
        }
    }
}
