package com.android.internal.widget;

import android.os.AsyncTask;
import com.android.internal.widget.LockPatternChecker;
import com.android.internal.widget.LockPatternUtils;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class LockPatternChecker {

    /* loaded from: classes5.dex */
    public interface OnVerifyCallback {
        void onVerified(VerifyCredentialResponse verifyCredentialResponse, int i);
    }

    /* loaded from: classes5.dex */
    public interface OnCheckCallback {
        void onChecked(boolean z, int i);

        default void onEarlyMatched() {
        }

        default void onCancelled() {
        }
    }

    public static AsyncTask<?, ?, ?> verifyCredential(LockPatternUtils utils, LockscreenCredential credential, int userId, int flags, OnVerifyCallback callback) {
        LockscreenCredential credentialCopy = credential.duplicate();
        AsyncTask<Void, Void, VerifyCredentialResponse> task = new AsyncTask<Void, Void, VerifyCredentialResponse>() { // from class: com.android.internal.widget.LockPatternChecker.1
            final /* synthetic */ OnVerifyCallback val$callback;
            final /* synthetic */ LockscreenCredential val$credentialCopy;
            final /* synthetic */ int val$flags;
            final /* synthetic */ int val$userId;

            AnonymousClass1(LockscreenCredential credentialCopy2, int userId2, int flags2, OnVerifyCallback callback2) {
                credentialCopy = credentialCopy2;
                userId = userId2;
                flags = flags2;
                callback = callback2;
            }

            @Override // android.os.AsyncTask
            public VerifyCredentialResponse doInBackground(Void... args) {
                return LockPatternUtils.this.verifyCredential(credentialCopy, userId, flags);
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(VerifyCredentialResponse result) {
                callback.onVerified(result, result.getTimeout());
                credentialCopy.zeroize();
            }

            @Override // android.os.AsyncTask
            protected void onCancelled() {
                credentialCopy.zeroize();
            }
        };
        task.execute(new Void[0]);
        return task;
    }

    /* renamed from: com.android.internal.widget.LockPatternChecker$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 extends AsyncTask<Void, Void, VerifyCredentialResponse> {
        final /* synthetic */ OnVerifyCallback val$callback;
        final /* synthetic */ LockscreenCredential val$credentialCopy;
        final /* synthetic */ int val$flags;
        final /* synthetic */ int val$userId;

        AnonymousClass1(LockscreenCredential credentialCopy2, int userId2, int flags2, OnVerifyCallback callback2) {
            credentialCopy = credentialCopy2;
            userId = userId2;
            flags = flags2;
            callback = callback2;
        }

        @Override // android.os.AsyncTask
        public VerifyCredentialResponse doInBackground(Void... args) {
            return LockPatternUtils.this.verifyCredential(credentialCopy, userId, flags);
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(VerifyCredentialResponse result) {
            callback.onVerified(result, result.getTimeout());
            credentialCopy.zeroize();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            credentialCopy.zeroize();
        }
    }

    /* renamed from: com.android.internal.widget.LockPatternChecker$2 */
    /* loaded from: classes5.dex */
    class AnonymousClass2 extends AsyncTask<Void, Void, Boolean> {
        private int mThrottleTimeout;
        final /* synthetic */ OnCheckCallback val$callback;
        final /* synthetic */ LockscreenCredential val$credentialCopy;
        final /* synthetic */ int val$userId;

        AnonymousClass2(LockscreenCredential lockscreenCredential, int i, OnCheckCallback onCheckCallback) {
            credentialCopy = lockscreenCredential;
            userId = i;
            callback = onCheckCallback;
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... args) {
            try {
                LockPatternUtils lockPatternUtils = LockPatternUtils.this;
                LockscreenCredential lockscreenCredential = credentialCopy;
                int i = userId;
                final OnCheckCallback onCheckCallback = callback;
                Objects.requireNonNull(onCheckCallback);
                return Boolean.valueOf(lockPatternUtils.checkCredential(lockscreenCredential, i, new LockPatternUtils.CheckCredentialProgressCallback() { // from class: com.android.internal.widget.LockPatternChecker$2$$ExternalSyntheticLambda0
                    @Override // com.android.internal.widget.LockPatternUtils.CheckCredentialProgressCallback
                    public final void onEarlyMatched() {
                        LockPatternChecker.OnCheckCallback.this.onEarlyMatched();
                    }
                }));
            } catch (LockPatternUtils.RequestThrottledException ex) {
                this.mThrottleTimeout = ex.getTimeoutMs();
                return false;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean result) {
            callback.onChecked(result.booleanValue(), this.mThrottleTimeout);
            credentialCopy.zeroize();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            callback.onCancelled();
            credentialCopy.zeroize();
        }
    }

    public static AsyncTask<?, ?, ?> checkCredential(LockPatternUtils utils, LockscreenCredential credential, int userId, OnCheckCallback callback) {
        LockscreenCredential credentialCopy = credential.duplicate();
        AsyncTask<Void, Void, Boolean> task = new AsyncTask<Void, Void, Boolean>() { // from class: com.android.internal.widget.LockPatternChecker.2
            private int mThrottleTimeout;
            final /* synthetic */ OnCheckCallback val$callback;
            final /* synthetic */ LockscreenCredential val$credentialCopy;
            final /* synthetic */ int val$userId;

            AnonymousClass2(LockscreenCredential credentialCopy2, int userId2, OnCheckCallback callback2) {
                credentialCopy = credentialCopy2;
                userId = userId2;
                callback = callback2;
            }

            @Override // android.os.AsyncTask
            public Boolean doInBackground(Void... args) {
                try {
                    LockPatternUtils lockPatternUtils = LockPatternUtils.this;
                    LockscreenCredential lockscreenCredential = credentialCopy;
                    int i = userId;
                    final OnCheckCallback onCheckCallback = callback;
                    Objects.requireNonNull(onCheckCallback);
                    return Boolean.valueOf(lockPatternUtils.checkCredential(lockscreenCredential, i, new LockPatternUtils.CheckCredentialProgressCallback() { // from class: com.android.internal.widget.LockPatternChecker$2$$ExternalSyntheticLambda0
                        @Override // com.android.internal.widget.LockPatternUtils.CheckCredentialProgressCallback
                        public final void onEarlyMatched() {
                            LockPatternChecker.OnCheckCallback.this.onEarlyMatched();
                        }
                    }));
                } catch (LockPatternUtils.RequestThrottledException ex) {
                    this.mThrottleTimeout = ex.getTimeoutMs();
                    return false;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Boolean result) {
                callback.onChecked(result.booleanValue(), this.mThrottleTimeout);
                credentialCopy.zeroize();
            }

            @Override // android.os.AsyncTask
            protected void onCancelled() {
                callback.onCancelled();
                credentialCopy.zeroize();
            }
        };
        task.execute(new Void[0]);
        return task;
    }

    public static AsyncTask<?, ?, ?> verifyTiedProfileChallenge(LockPatternUtils utils, LockscreenCredential credential, int userId, int flags, OnVerifyCallback callback) {
        LockscreenCredential credentialCopy = credential.duplicate();
        AsyncTask<Void, Void, VerifyCredentialResponse> task = new AsyncTask<Void, Void, VerifyCredentialResponse>() { // from class: com.android.internal.widget.LockPatternChecker.3
            final /* synthetic */ OnVerifyCallback val$callback;
            final /* synthetic */ LockscreenCredential val$credentialCopy;
            final /* synthetic */ int val$flags;
            final /* synthetic */ int val$userId;

            AnonymousClass3(LockscreenCredential credentialCopy2, int userId2, int flags2, OnVerifyCallback callback2) {
                credentialCopy = credentialCopy2;
                userId = userId2;
                flags = flags2;
                callback = callback2;
            }

            @Override // android.os.AsyncTask
            public VerifyCredentialResponse doInBackground(Void... args) {
                return LockPatternUtils.this.verifyTiedProfileChallenge(credentialCopy, userId, flags);
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(VerifyCredentialResponse response) {
                callback.onVerified(response, response.getTimeout());
                credentialCopy.zeroize();
            }

            @Override // android.os.AsyncTask
            protected void onCancelled() {
                credentialCopy.zeroize();
            }
        };
        task.execute(new Void[0]);
        return task;
    }

    /* renamed from: com.android.internal.widget.LockPatternChecker$3 */
    /* loaded from: classes5.dex */
    class AnonymousClass3 extends AsyncTask<Void, Void, VerifyCredentialResponse> {
        final /* synthetic */ OnVerifyCallback val$callback;
        final /* synthetic */ LockscreenCredential val$credentialCopy;
        final /* synthetic */ int val$flags;
        final /* synthetic */ int val$userId;

        AnonymousClass3(LockscreenCredential credentialCopy2, int userId2, int flags2, OnVerifyCallback callback2) {
            credentialCopy = credentialCopy2;
            userId = userId2;
            flags = flags2;
            callback = callback2;
        }

        @Override // android.os.AsyncTask
        public VerifyCredentialResponse doInBackground(Void... args) {
            return LockPatternUtils.this.verifyTiedProfileChallenge(credentialCopy, userId, flags);
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(VerifyCredentialResponse response) {
            callback.onVerified(response, response.getTimeout());
            credentialCopy.zeroize();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            credentialCopy.zeroize();
        }
    }

    /* renamed from: com.android.internal.widget.LockPatternChecker$4 */
    /* loaded from: classes5.dex */
    class AnonymousClass4 extends AsyncTask<Void, Void, Boolean> {
        final /* synthetic */ OnCheckCallback val$callback;
        final /* synthetic */ byte[] val$password;
        final /* synthetic */ int val$remoteLockType;
        final /* synthetic */ int val$userId;

        AnonymousClass4(int i, byte[] bArr, int i2, OnCheckCallback onCheckCallback) {
            remoteLockType = i;
            password = bArr;
            userId = i2;
            callback = onCheckCallback;
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... args) {
            return Boolean.valueOf(LockPatternUtils.this.checkRemoteLockPassword(remoteLockType, password, userId));
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean result) {
            callback.onChecked(result.booleanValue(), 0);
        }
    }

    public static AsyncTask<?, ?, ?> checkRemoteLockPassword(LockPatternUtils utils, int remoteLockType, byte[] password, int userId, OnCheckCallback callback) {
        AsyncTask<Void, Void, Boolean> task = new AsyncTask<Void, Void, Boolean>() { // from class: com.android.internal.widget.LockPatternChecker.4
            final /* synthetic */ OnCheckCallback val$callback;
            final /* synthetic */ byte[] val$password;
            final /* synthetic */ int val$remoteLockType;
            final /* synthetic */ int val$userId;

            AnonymousClass4(int remoteLockType2, byte[] password2, int userId2, OnCheckCallback callback2) {
                remoteLockType = remoteLockType2;
                password = password2;
                userId = userId2;
                callback = callback2;
            }

            @Override // android.os.AsyncTask
            public Boolean doInBackground(Void... args) {
                return Boolean.valueOf(LockPatternUtils.this.checkRemoteLockPassword(remoteLockType, password, userId));
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Boolean result) {
                callback.onChecked(result.booleanValue(), 0);
            }
        };
        task.execute(new Void[0]);
        return task;
    }

    /* renamed from: com.android.internal.widget.LockPatternChecker$5 */
    /* loaded from: classes5.dex */
    class AnonymousClass5 extends AsyncTask<Void, Void, Boolean> {
        private int mThrottleTimeout;
        final /* synthetic */ OnCheckCallbackForDualDarDo val$callback;
        final /* synthetic */ LockscreenCredential val$credentialCopy;
        final /* synthetic */ int val$option;
        final /* synthetic */ int val$userId;

        AnonymousClass5(LockscreenCredential lockscreenCredential, int i, int i2, OnCheckCallbackForDualDarDo onCheckCallbackForDualDarDo) {
            credentialCopy = lockscreenCredential;
            userId = i;
            option = i2;
            callback = onCheckCallbackForDualDarDo;
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... args) {
            try {
                return Boolean.valueOf(LockPatternUtils.this.getLockPatternUtilForDualDarDo().checkCredential(credentialCopy, userId, option, callback));
            } catch (LockPatternUtils.RequestThrottledException ex) {
                this.mThrottleTimeout = ex.getTimeoutMs();
                return false;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean result) {
            callback.onChecked(result.booleanValue(), this.mThrottleTimeout);
            credentialCopy.zeroize();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            callback.onCancelled();
            credentialCopy.zeroize();
        }
    }

    public static AsyncTask<?, ?, ?> checkCredential(LockPatternUtils utils, LockscreenCredential credential, int userId, int option, OnCheckCallbackForDualDarDo callback) {
        LockscreenCredential credentialCopy = credential.duplicate();
        AsyncTask<Void, Void, Boolean> task = new AsyncTask<Void, Void, Boolean>() { // from class: com.android.internal.widget.LockPatternChecker.5
            private int mThrottleTimeout;
            final /* synthetic */ OnCheckCallbackForDualDarDo val$callback;
            final /* synthetic */ LockscreenCredential val$credentialCopy;
            final /* synthetic */ int val$option;
            final /* synthetic */ int val$userId;

            AnonymousClass5(LockscreenCredential credentialCopy2, int userId2, int option2, OnCheckCallbackForDualDarDo callback2) {
                credentialCopy = credentialCopy2;
                userId = userId2;
                option = option2;
                callback = callback2;
            }

            @Override // android.os.AsyncTask
            public Boolean doInBackground(Void... args) {
                try {
                    return Boolean.valueOf(LockPatternUtils.this.getLockPatternUtilForDualDarDo().checkCredential(credentialCopy, userId, option, callback));
                } catch (LockPatternUtils.RequestThrottledException ex) {
                    this.mThrottleTimeout = ex.getTimeoutMs();
                    return false;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Boolean result) {
                callback.onChecked(result.booleanValue(), this.mThrottleTimeout);
                credentialCopy.zeroize();
            }

            @Override // android.os.AsyncTask
            protected void onCancelled() {
                callback.onCancelled();
                credentialCopy.zeroize();
            }
        };
        task.execute(new Void[0]);
        return task;
    }

    /* loaded from: classes5.dex */
    public interface OnCheckCallbackForDualDarDo extends LockPatternUtils.DualDarAuthProgressCallback {
        void onChecked(boolean z, int i);

        default void onCancelled() {
        }
    }
}
