package com.android.settingslib.suggestions;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.service.settings.suggestions.ISuggestionService;
import android.util.Log;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SuggestionController {
    public final ServiceConnectionListener mConnectionListener;
    public final Context mContext;
    public ISuggestionService mRemoteService;
    public final AnonymousClass1 mServiceConnection = new ServiceConnection() { // from class: com.android.settingslib.suggestions.SuggestionController.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            SuggestionController.this.mRemoteService = ISuggestionService.Stub.asInterface(iBinder);
            ServiceConnectionListener serviceConnectionListener = SuggestionController.this.mConnectionListener;
            if (serviceConnectionListener != null) {
                serviceConnectionListener.onServiceConnected();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            SuggestionController suggestionController = SuggestionController.this;
            ServiceConnectionListener serviceConnectionListener = suggestionController.mConnectionListener;
            if (serviceConnectionListener != null) {
                suggestionController.mRemoteService = null;
                serviceConnectionListener.onServiceDisconnected();
            }
        }
    };
    public final Intent mServiceIntent;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface ServiceConnectionListener {
        void onServiceConnected();

        void onServiceDisconnected();
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.settingslib.suggestions.SuggestionController$1] */
    public SuggestionController(Context context, ComponentName componentName, ServiceConnectionListener serviceConnectionListener) {
        this.mContext = context.getApplicationContext();
        this.mConnectionListener = serviceConnectionListener;
        this.mServiceIntent = new Intent().setComponent(componentName);
    }

    public final List getSuggestions() {
        boolean z;
        ISuggestionService iSuggestionService = this.mRemoteService;
        if (iSuggestionService != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return null;
        }
        try {
            return iSuggestionService.getSuggestions();
        } catch (RemoteException | RuntimeException e) {
            Log.w("SuggestionController", "Error when calling getSuggestion()", e);
            return null;
        } catch (NullPointerException e2) {
            Log.w("SuggestionController", "mRemote service detached before able to query", e2);
            return null;
        }
    }
}
