package androidx.mediarouter.app;

import android.app.Dialog;
import android.content.res.Configuration;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.DialogFragment;
import androidx.mediarouter.media.MediaRouteSelector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class MediaRouteControllerDialogFragment extends DialogFragment {
    public AppCompatDialog mDialog;
    public MediaRouteSelector mSelector;
    public boolean mUseDynamicGroup = false;

    public MediaRouteControllerDialogFragment() {
        this.mCancelable = true;
        Dialog dialog = super.mDialog;
        if (dialog != null) {
            dialog.setCancelable(true);
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
        AppCompatDialog appCompatDialog = this.mDialog;
        if (appCompatDialog != null) {
            if (this.mUseDynamicGroup) {
                ((MediaRouteDynamicControllerDialog) appCompatDialog).updateLayout();
            } else {
                ((MediaRouteControllerDialog) appCompatDialog).updateLayout();
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog() {
        if (this.mUseDynamicGroup) {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = new MediaRouteDynamicControllerDialog(getContext());
            this.mDialog = mediaRouteDynamicControllerDialog;
            mediaRouteDynamicControllerDialog.setRouteSelector(this.mSelector);
        } else {
            this.mDialog = new MediaRouteControllerDialog(getContext());
        }
        return this.mDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        AppCompatDialog appCompatDialog = this.mDialog;
        if (appCompatDialog != null && !this.mUseDynamicGroup) {
            ((MediaRouteControllerDialog) appCompatDialog).clearGroupListAnimation(false);
        }
    }
}
