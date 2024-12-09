package com.sec.internal.ims.servicemodules.quantumencryption;

import android.os.RemoteException;
import android.util.Log;
import com.voltecrypt.service.SXICTQMVoLTECallBack;
import com.voltecrypt.service.SxHangUpEntity;
import com.voltecrypt.service.SxRequestAuthenticationEntity;
import com.voltecrypt.service.SxRequestPeerProfileEntity;
import com.voltecrypt.service.SxRequestQMKeyEntity;

/* loaded from: classes.dex */
public class QuantumEncryptionNotifier {
    public static final String LOG_TAG = "QuantumEncryptionNotifier";
    private SXICTQMVoLTECallBack mListeners;

    public void registerVoLTECallback(SXICTQMVoLTECallBack sXICTQMVoLTECallBack) {
        Log.i(LOG_TAG, "registerVoLTECallback");
        this.mListeners = sXICTQMVoLTECallBack;
    }

    public void resetVoLTECallback() {
        Log.i(LOG_TAG, "resetVoLTECallback");
        this.mListeners = null;
    }

    void onRequestAuthentication(SxRequestAuthenticationEntity sxRequestAuthenticationEntity) {
        Log.i(LOG_TAG, "onRequestAuthentication");
        int i = -1;
        try {
            SXICTQMVoLTECallBack sXICTQMVoLTECallBack = this.mListeners;
            if (sXICTQMVoLTECallBack != null) {
                i = sXICTQMVoLTECallBack.onRequestAuthentication(sxRequestAuthenticationEntity);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        Log.i(LOG_TAG, "res = " + i);
    }

    void onRequestPeerProfileStatus(SxRequestPeerProfileEntity sxRequestPeerProfileEntity) {
        Log.i(LOG_TAG, "onRequestPeerProfileStatus");
        int i = -1;
        try {
            SXICTQMVoLTECallBack sXICTQMVoLTECallBack = this.mListeners;
            if (sXICTQMVoLTECallBack != null) {
                i = sXICTQMVoLTECallBack.onRequestPeerProfileStatus(sxRequestPeerProfileEntity);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        Log.i(LOG_TAG, "res = " + i);
    }

    void onRequestQMKey(SxRequestQMKeyEntity sxRequestQMKeyEntity) {
        Log.i(LOG_TAG, "onRequestQMKey");
        int i = -1;
        try {
            SXICTQMVoLTECallBack sXICTQMVoLTECallBack = this.mListeners;
            if (sXICTQMVoLTECallBack != null) {
                i = sXICTQMVoLTECallBack.onRequestQMKey(sxRequestQMKeyEntity);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        Log.i(LOG_TAG, "res = " + i);
    }

    void onGetVoLTEStatus() {
        Log.i(LOG_TAG, "onGetVoLTEStatus");
        int i = -1;
        try {
            SXICTQMVoLTECallBack sXICTQMVoLTECallBack = this.mListeners;
            if (sXICTQMVoLTECallBack != null) {
                i = sXICTQMVoLTECallBack.onGetVoLTEStatus();
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        Log.i(LOG_TAG, "res = " + i);
    }

    void onGetVoLTEStatusComment() {
        Log.i(LOG_TAG, "onGetVoLTEStatusComment");
        String str = null;
        try {
            SXICTQMVoLTECallBack sXICTQMVoLTECallBack = this.mListeners;
            if (sXICTQMVoLTECallBack != null) {
                str = sXICTQMVoLTECallBack.onGetVoLTEStatusComment();
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        Log.i(LOG_TAG, "res = " + str);
    }

    void onHangUp(SxHangUpEntity sxHangUpEntity) {
        Log.i(LOG_TAG, "onHangUp");
        int i = -1;
        try {
            SXICTQMVoLTECallBack sXICTQMVoLTECallBack = this.mListeners;
            if (sXICTQMVoLTECallBack != null) {
                i = sXICTQMVoLTECallBack.onHangUp(sxHangUpEntity);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        Log.i(LOG_TAG, "res = " + i);
    }
}
