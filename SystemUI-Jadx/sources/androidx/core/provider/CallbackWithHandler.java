package androidx.core.provider;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import androidx.core.provider.FontRequestWorker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CallbackWithHandler {
    public final FontsContractCompat$FontRequestCallback mCallback;
    public final Handler mCallbackHandler;

    public CallbackWithHandler(FontsContractCompat$FontRequestCallback fontsContractCompat$FontRequestCallback, Handler handler) {
        this.mCallback = fontsContractCompat$FontRequestCallback;
        this.mCallbackHandler = handler;
    }

    public final void onTypefaceResult(FontRequestWorker.TypefaceResult typefaceResult) {
        boolean z;
        final int i = typefaceResult.mResult;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        Handler handler = this.mCallbackHandler;
        final FontsContractCompat$FontRequestCallback fontsContractCompat$FontRequestCallback = this.mCallback;
        if (z) {
            final Typeface typeface = typefaceResult.mTypeface;
            handler.post(new Runnable(this) { // from class: androidx.core.provider.CallbackWithHandler.1
                @Override // java.lang.Runnable
                public final void run() {
                    fontsContractCompat$FontRequestCallback.onTypefaceRetrieved(typeface);
                }
            });
        } else {
            handler.post(new Runnable(this) { // from class: androidx.core.provider.CallbackWithHandler.2
                @Override // java.lang.Runnable
                public final void run() {
                    fontsContractCompat$FontRequestCallback.onTypefaceRequestFailed(i);
                }
            });
        }
    }

    public CallbackWithHandler(FontsContractCompat$FontRequestCallback fontsContractCompat$FontRequestCallback) {
        Handler handler;
        this.mCallback = fontsContractCompat$FontRequestCallback;
        if (Looper.myLooper() == null) {
            handler = new Handler(Looper.getMainLooper());
        } else {
            handler = new Handler();
        }
        this.mCallbackHandler = handler;
    }
}
