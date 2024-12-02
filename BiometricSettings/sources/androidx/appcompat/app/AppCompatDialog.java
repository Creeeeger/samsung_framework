package androidx.appcompat.app;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentDialog;
import androidx.activity.ViewTreeOnBackPressedDispatcherOwner;
import com.samsung.android.biometrics.app.setting.R;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public class AppCompatDialog extends ComponentDialog implements AppCompatCallback {
    private AppCompatDelegate mDelegate;
    private final AppCompatDialog$$ExternalSyntheticLambda0 mKeyDispatcher;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public AppCompatDialog(android.content.Context r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r1 = 2130968754(0x7f0400b2, float:1.754617E38)
            if (r6 != 0) goto L15
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r5.getTheme()
            r3.resolveAttribute(r1, r2, r0)
            int r2 = r2.resourceId
            goto L16
        L15:
            r2 = r6
        L16:
            r4.<init>(r5, r2)
            androidx.appcompat.app.AppCompatDialog$$ExternalSyntheticLambda0 r2 = new androidx.appcompat.app.AppCompatDialog$$ExternalSyntheticLambda0
            r3 = r4
            androidx.appcompat.app.AlertDialog r3 = (androidx.appcompat.app.AlertDialog) r3
            r2.<init>(r3)
            r4.mKeyDispatcher = r2
            androidx.appcompat.app.AppCompatDelegate r4 = r4.getDelegate()
            if (r6 != 0) goto L37
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.res.Resources$Theme r5 = r5.getTheme()
            r5.resolveAttribute(r1, r6, r0)
            int r6 = r6.resourceId
        L37:
            r4.setTheme(r6)
            r4.onCreate()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDialog.<init>(android.content.Context, int):void");
    }

    private void initViewTreeOwners() {
        getWindow().getDecorView().setTag(R.id.view_tree_lifecycle_owner, this);
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullParameter(decorView, "<this>");
        decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        ViewTreeOnBackPressedDispatcherOwner.set(getWindow().getDecorView(), this);
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().addContentView(view, layoutParams);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        getDelegate().onDestroy();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        getWindow().getDecorView();
        AppCompatDialog$$ExternalSyntheticLambda0 appCompatDialog$$ExternalSyntheticLambda0 = this.mKeyDispatcher;
        if (appCompatDialog$$ExternalSyntheticLambda0 == null) {
            return false;
        }
        return appCompatDialog$$ExternalSyntheticLambda0.superDispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final <T extends View> T findViewById(int i) {
        return (T) getDelegate().findViewById(i);
    }

    public final AppCompatDelegate getDelegate() {
        if (this.mDelegate == null) {
            AppLocalesStorageHelper$SerialExecutor appLocalesStorageHelper$SerialExecutor = AppCompatDelegate.sSerialExecutorForLocalesStorage;
            this.mDelegate = new AppCompatDelegateImpl(this, this);
        }
        return this.mDelegate;
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        getDelegate().invalidateOptionsMenu();
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        getDelegate().installViewFactory();
        super.onCreate(bundle);
        getDelegate().onCreate();
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    protected final void onStop() {
        super.onStop();
        getDelegate().onStop();
    }

    @Override // android.app.Dialog
    public final void setContentView(int i) {
        initViewTreeOwners();
        getDelegate().setContentView(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().setTitle(charSequence);
    }

    final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        initViewTreeOwners();
        getDelegate().setContentView(view);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(i);
        getDelegate().setTitle(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        getDelegate().setContentView(view, layoutParams);
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public final void onSupportActionModeFinished() {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public final void onSupportActionModeStarted() {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public final void onWindowStartingSupportActionMode() {
    }
}
