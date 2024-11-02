package android.view.inputmethod;

import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.inputmethod.IInputMethodSession;
import com.android.internal.inputmethod.IRemoteInputConnection;

/* loaded from: classes4.dex */
public final class IInputMethodSessionInvoker {
    private static final String TAG = "InputMethodSessionWrapper";
    private static Handler sAsyncBinderEmulationHandler;
    private static final Object sAsyncBinderEmulationHandlerLock = new Object();
    private final Handler mCustomHandler;
    private final IInputMethodSession mSession;

    private IInputMethodSessionInvoker(IInputMethodSession inputMethodSession, Handler customHandler) {
        this.mSession = inputMethodSession;
        this.mCustomHandler = customHandler;
    }

    public static IInputMethodSessionInvoker createOrNull(IInputMethodSession inputMethodSession) {
        Handler customHandler;
        if (inputMethodSession != null && !Binder.isProxy(inputMethodSession)) {
            synchronized (sAsyncBinderEmulationHandlerLock) {
                if (sAsyncBinderEmulationHandler == null) {
                    HandlerThread thread = new HandlerThread("IMM.binder-emu");
                    thread.start();
                    sAsyncBinderEmulationHandler = Handler.createAsync(thread.getLooper());
                }
                customHandler = sAsyncBinderEmulationHandler;
            }
        } else {
            customHandler = null;
        }
        if (inputMethodSession != null) {
            return new IInputMethodSessionInvoker(inputMethodSession, customHandler);
        }
        return null;
    }

    public void finishInput() {
        Handler handler = this.mCustomHandler;
        if (handler == null) {
            finishInputInternal();
        } else {
            handler.post(new Runnable() { // from class: android.view.inputmethod.IInputMethodSessionInvoker$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    IInputMethodSessionInvoker.this.finishInputInternal();
                }
            });
        }
    }

    public void finishInputInternal() {
        try {
            this.mSession.finishInput();
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    public void updateCursorAnchorInfo(final CursorAnchorInfo cursorAnchorInfo) {
        Handler handler = this.mCustomHandler;
        if (handler == null) {
            lambda$updateCursorAnchorInfo$0(cursorAnchorInfo);
        } else {
            handler.post(new Runnable() { // from class: android.view.inputmethod.IInputMethodSessionInvoker$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    IInputMethodSessionInvoker.this.lambda$updateCursorAnchorInfo$0(cursorAnchorInfo);
                }
            });
        }
    }

    /* renamed from: updateCursorAnchorInfoInternal */
    public void lambda$updateCursorAnchorInfo$0(CursorAnchorInfo cursorAnchorInfo) {
        try {
            this.mSession.updateCursorAnchorInfo(cursorAnchorInfo);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    public void displayCompletions(final CompletionInfo[] completions) {
        Handler handler = this.mCustomHandler;
        if (handler == null) {
            lambda$displayCompletions$1(completions);
        } else {
            handler.post(new Runnable() { // from class: android.view.inputmethod.IInputMethodSessionInvoker$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    IInputMethodSessionInvoker.this.lambda$displayCompletions$1(completions);
                }
            });
        }
    }

    /* renamed from: displayCompletionsInternal */
    public void lambda$displayCompletions$1(CompletionInfo[] completions) {
        try {
            this.mSession.displayCompletions(completions);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    public void updateExtractedTextSync(int token, ExtractedText text) {
        lambda$updateExtractedText$2(token, text);
    }

    public void updateExtractedText(final int token, final ExtractedText text) {
        Handler handler = this.mCustomHandler;
        if (handler == null) {
            lambda$updateExtractedText$2(token, text);
        } else {
            handler.post(new Runnable() { // from class: android.view.inputmethod.IInputMethodSessionInvoker$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    IInputMethodSessionInvoker.this.lambda$updateExtractedText$2(token, text);
                }
            });
        }
    }

    /* renamed from: updateExtractedTextInternal */
    public void lambda$updateExtractedText$2(int token, ExtractedText text) {
        try {
            this.mSession.updateExtractedText(token, text);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    public void appPrivateCommand(final String action, final Bundle data) {
        Handler handler = this.mCustomHandler;
        if (handler == null) {
            lambda$appPrivateCommand$3(action, data);
        } else {
            handler.post(new Runnable() { // from class: android.view.inputmethod.IInputMethodSessionInvoker$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    IInputMethodSessionInvoker.this.lambda$appPrivateCommand$3(action, data);
                }
            });
        }
    }

    /* renamed from: appPrivateCommandInternal */
    public void lambda$appPrivateCommand$3(String action, Bundle data) {
        try {
            this.mSession.appPrivateCommand(action, data);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    public void viewClicked(final boolean focusChanged) {
        Handler handler = this.mCustomHandler;
        if (handler == null) {
            lambda$viewClicked$4(focusChanged);
        } else {
            handler.post(new Runnable() { // from class: android.view.inputmethod.IInputMethodSessionInvoker$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    IInputMethodSessionInvoker.this.lambda$viewClicked$4(focusChanged);
                }
            });
        }
    }

    /* renamed from: viewClickedInternal */
    public void lambda$viewClicked$4(boolean focusChanged) {
        try {
            this.mSession.viewClicked(focusChanged);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    public void updateCursor(final Rect newCursor) {
        Handler handler = this.mCustomHandler;
        if (handler == null) {
            lambda$updateCursor$5(newCursor);
        } else {
            handler.post(new Runnable() { // from class: android.view.inputmethod.IInputMethodSessionInvoker$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    IInputMethodSessionInvoker.this.lambda$updateCursor$5(newCursor);
                }
            });
        }
    }

    /* renamed from: updateCursorInternal */
    public void lambda$updateCursor$5(Rect newCursor) {
        try {
            this.mSession.updateCursor(newCursor);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    public void updateSelection(final int oldSelStart, final int oldSelEnd, final int selStart, final int selEnd, final int candidatesStart, final int candidatesEnd) {
        Handler handler = this.mCustomHandler;
        if (handler == null) {
            lambda$updateSelection$6(oldSelStart, oldSelEnd, selStart, selEnd, candidatesStart, candidatesEnd);
        } else {
            handler.post(new Runnable() { // from class: android.view.inputmethod.IInputMethodSessionInvoker$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    IInputMethodSessionInvoker.this.lambda$updateSelection$6(oldSelStart, oldSelEnd, selStart, selEnd, candidatesStart, candidatesEnd);
                }
            });
        }
    }

    /* renamed from: updateSelectionInternal */
    public void lambda$updateSelection$6(int oldSelStart, int oldSelEnd, int selStart, int selEnd, int candidatesStart, int candidatesEnd) {
        try {
            this.mSession.updateSelection(oldSelStart, oldSelEnd, selStart, selEnd, candidatesStart, candidatesEnd);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    public void invalidateInput(final EditorInfo editorInfo, final IRemoteInputConnection inputConnection, final int sessionId) {
        Handler handler = this.mCustomHandler;
        if (handler == null) {
            lambda$invalidateInput$7(editorInfo, inputConnection, sessionId);
        } else {
            handler.post(new Runnable() { // from class: android.view.inputmethod.IInputMethodSessionInvoker$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    IInputMethodSessionInvoker.this.lambda$invalidateInput$7(editorInfo, inputConnection, sessionId);
                }
            });
        }
    }

    /* renamed from: invalidateInputInternal */
    public void lambda$invalidateInput$7(EditorInfo editorInfo, IRemoteInputConnection inputConnection, int sessionId) {
        try {
            this.mSession.invalidateInput(editorInfo, inputConnection, sessionId);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    public String toString() {
        return this.mSession.toString();
    }
}
