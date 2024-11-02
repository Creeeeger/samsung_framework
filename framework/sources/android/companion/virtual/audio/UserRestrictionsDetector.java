package android.companion.virtual.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.UserManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class UserRestrictionsDetector extends BroadcastReceiver {
    private static final String TAG = "UserRestrictionsDetector";
    private final Context mContext;
    private boolean mIsUnmuteMicDisallowed;
    private final Object mLock = new Object();
    private final UserManager mUserManager;
    private UserRestrictionsCallback mUserRestrictionsCallback;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface UserRestrictionsCallback {
        void onMicrophoneRestrictionChanged(boolean z);
    }

    public UserRestrictionsDetector(Context context) {
        this.mContext = context;
        this.mUserManager = (UserManager) context.getSystemService(UserManager.class);
    }

    public boolean isUnmuteMicrophoneDisallowed() {
        Bundle bundle = this.mUserManager.getUserRestrictions();
        return bundle.getBoolean(UserManager.DISALLOW_UNMUTE_MICROPHONE);
    }

    public void register(UserRestrictionsCallback callback) {
        this.mUserRestrictionsCallback = callback;
        IntentFilter filter = new IntentFilter();
        filter.addAction(UserManager.ACTION_USER_RESTRICTIONS_CHANGED);
        this.mContext.registerReceiver(this, filter);
        synchronized (this.mLock) {
            this.mIsUnmuteMicDisallowed = isUnmuteMicrophoneDisallowed();
        }
    }

    public void unregister() {
        if (this.mUserRestrictionsCallback != null) {
            this.mUserRestrictionsCallback = null;
            this.mContext.unregisterReceiver(this);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (UserManager.ACTION_USER_RESTRICTIONS_CHANGED.equals(action)) {
            boolean isUnmuteMicDisallowed = isUnmuteMicrophoneDisallowed();
            synchronized (this.mLock) {
                if (isUnmuteMicDisallowed == this.mIsUnmuteMicDisallowed) {
                    return;
                }
                this.mIsUnmuteMicDisallowed = isUnmuteMicDisallowed;
                UserRestrictionsCallback userRestrictionsCallback = this.mUserRestrictionsCallback;
                if (userRestrictionsCallback != null) {
                    userRestrictionsCallback.onMicrophoneRestrictionChanged(isUnmuteMicDisallowed);
                }
            }
        }
    }
}
