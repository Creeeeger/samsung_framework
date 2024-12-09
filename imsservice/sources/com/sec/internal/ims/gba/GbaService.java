package com.sec.internal.ims.gba;

import android.os.RemoteException;
import android.telephony.IBootstrapAuthenticationCallback;
import android.telephony.gba.GbaAuthRequest;
import android.telephony.gba.IGbaService;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.interfaces.ims.gba.IGbaCallback;
import com.sec.internal.interfaces.ims.gba.IGbaServiceModule;

/* loaded from: classes.dex */
public class GbaService extends IGbaService.Stub {
    private static final String LOG_TAG = GbaService.class.getSimpleName();
    private final SparseArray<Pair<Integer, IBootstrapAuthenticationCallback>> mCallbacks = new SparseArray<>();
    private GbaHelper mGbaHelper = new GbaHelper();
    private IGbaServiceModule mModule;

    public GbaService(ServiceModuleBase serviceModuleBase) {
        this.mModule = (GbaServiceModule) serviceModuleBase;
    }

    public void authenticationRequest(GbaAuthRequest gbaAuthRequest) throws RemoteException {
        String str = LOG_TAG;
        Log.i(str, "authenticationRequest : " + gbaAuthRequest.toString());
        synchronized (this.mModule) {
            GbaValue gbaValue = this.mModule.getGbaValue(SimManagerFactory.getSlotId(gbaAuthRequest.getSubId()), GbaUtility.getNafUrl(gbaAuthRequest.getNafUrl().toString()));
            if (gbaValue != null) {
                gbaAuthRequest.getCallback().onKeysAvailable(gbaAuthRequest.getToken(), gbaValue.getValue(), gbaValue.getBtid());
                return;
            }
            int btidAndGbaKey = this.mModule.getBtidAndGbaKey(gbaAuthRequest, this.mGbaHelper);
            if (btidAndGbaKey == -1) {
                gbaAuthRequest.getCallback().onAuthenticationFailure(gbaAuthRequest.getToken(), 0);
                Log.e(str, "authenticationRequest Fail " + gbaAuthRequest.getToken());
                return;
            }
            Log.d(str, "authenticationRequest : Id " + btidAndGbaKey);
            synchronized (this.mCallbacks) {
                this.mCallbacks.put(btidAndGbaKey, Pair.create(Integer.valueOf(gbaAuthRequest.getToken()), gbaAuthRequest.getCallback()));
            }
        }
    }

    private class GbaHelper implements IGbaCallback {
        private GbaHelper() {
        }

        @Override // com.sec.internal.interfaces.ims.gba.IGbaCallback
        public void onComplete(int i, String str, String str2, boolean z, HttpResponseParams httpResponseParams) {
            IBootstrapAuthenticationCallback iBootstrapAuthenticationCallback;
            int i2;
            Log.d(GbaService.LOG_TAG, "authenticationRequest : onComplete " + i);
            synchronized (GbaService.this.mCallbacks) {
                if (GbaService.this.mCallbacks.get(i) != null) {
                    i2 = ((Integer) ((Pair) GbaService.this.mCallbacks.get(i)).first).intValue();
                    iBootstrapAuthenticationCallback = (IBootstrapAuthenticationCallback) ((Pair) GbaService.this.mCallbacks.get(i)).second;
                    GbaService.this.mCallbacks.remove(i);
                } else {
                    iBootstrapAuthenticationCallback = null;
                    i2 = 0;
                }
            }
            if (iBootstrapAuthenticationCallback != null) {
                try {
                    iBootstrapAuthenticationCallback.onKeysAvailable(i2, Base64.decode(str2, 2), str);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // com.sec.internal.interfaces.ims.gba.IGbaCallback
        public void onFail(int i, GbaException gbaException) {
            IBootstrapAuthenticationCallback iBootstrapAuthenticationCallback;
            int i2;
            Log.d(GbaService.LOG_TAG, "authenticationRequest : onFail : " + i);
            synchronized (GbaService.this.mCallbacks) {
                if (GbaService.this.mCallbacks.get(i) != null) {
                    i2 = ((Integer) ((Pair) GbaService.this.mCallbacks.get(i)).first).intValue();
                    iBootstrapAuthenticationCallback = (IBootstrapAuthenticationCallback) ((Pair) GbaService.this.mCallbacks.get(i)).second;
                    GbaService.this.mCallbacks.remove(i);
                } else {
                    iBootstrapAuthenticationCallback = null;
                    i2 = 0;
                }
            }
            if (iBootstrapAuthenticationCallback != null) {
                try {
                    iBootstrapAuthenticationCallback.onAuthenticationFailure(i2, gbaException.getCode());
                } catch (RemoteException unused) {
                }
            }
        }
    }
}
