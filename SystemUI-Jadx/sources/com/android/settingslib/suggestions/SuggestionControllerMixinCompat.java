package com.android.settingslib.suggestions;

import android.content.ComponentName;
import android.content.Context;
import android.os.Process;
import android.os.UserHandle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.loader.app.LoaderManager;
import com.android.settingslib.core.lifecycle.Lifecycle;
import com.android.settingslib.suggestions.SuggestionController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SuggestionControllerMixinCompat implements SuggestionController.ServiceConnectionListener, LifecycleObserver, LoaderManager.LoaderCallbacks {
    public final SuggestionController mSuggestionController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface SuggestionControllerHost {
    }

    public SuggestionControllerMixinCompat(Context context, SuggestionControllerHost suggestionControllerHost, Lifecycle lifecycle, ComponentName componentName) {
        this.mSuggestionController = new SuggestionController(context.getApplicationContext(), componentName, this);
        if (lifecycle != null) {
            lifecycle.addObserver(this);
        }
    }

    @Override // com.android.settingslib.suggestions.SuggestionController.ServiceConnectionListener
    public final void onServiceConnected() {
        throw null;
    }

    @Override // com.android.settingslib.suggestions.SuggestionController.ServiceConnectionListener
    public final void onServiceDisconnected() {
        throw null;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart() {
        SuggestionController suggestionController = this.mSuggestionController;
        suggestionController.getClass();
        UserHandle myUserHandle = Process.myUserHandle();
        suggestionController.mContext.bindServiceAsUser(suggestionController.mServiceIntent, suggestionController.mServiceConnection, 1, myUserHandle);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop() {
        SuggestionController suggestionController = this.mSuggestionController;
        if (suggestionController.mRemoteService != null) {
            suggestionController.mRemoteService = null;
            suggestionController.mContext.unbindService(suggestionController.mServiceConnection);
        }
    }
}
