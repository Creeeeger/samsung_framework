package androidx.mediarouter.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.DialogFragment;
import androidx.mediarouter.media.MediaRouteSelector;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class MediaRouteChooserDialogFragment extends DialogFragment {
    public AppCompatDialog mDialog;
    public MediaRouteSelector mSelector;
    public boolean mUseDynamicGroup = false;

    public MediaRouteChooserDialogFragment() {
        this.mCancelable = true;
        Dialog dialog = super.mDialog;
        if (dialog != null) {
            dialog.setCancelable(true);
        }
    }

    public final void ensureRouteSelector() {
        if (this.mSelector == null) {
            Bundle bundle = this.mArguments;
            if (bundle != null) {
                Bundle bundle2 = bundle.getBundle("selector");
                MediaRouteSelector mediaRouteSelector = null;
                if (bundle2 != null) {
                    mediaRouteSelector = new MediaRouteSelector(bundle2, null);
                } else {
                    MediaRouteSelector mediaRouteSelector2 = MediaRouteSelector.EMPTY;
                }
                this.mSelector = mediaRouteSelector;
            }
            if (this.mSelector == null) {
                this.mSelector = MediaRouteSelector.EMPTY;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int dialogWidth;
        this.mCalled = true;
        AppCompatDialog appCompatDialog = this.mDialog;
        if (appCompatDialog == null) {
            return;
        }
        int i = -2;
        if (this.mUseDynamicGroup) {
            MediaRouteDynamicChooserDialog mediaRouteDynamicChooserDialog = (MediaRouteDynamicChooserDialog) appCompatDialog;
            Context context = mediaRouteDynamicChooserDialog.mContext;
            if (!context.getResources().getBoolean(R.bool.is_tablet)) {
                dialogWidth = -1;
            } else {
                dialogWidth = MediaRouteDialogHelper.getDialogWidth(context);
            }
            if (!mediaRouteDynamicChooserDialog.mContext.getResources().getBoolean(R.bool.is_tablet)) {
                i = -1;
            }
            mediaRouteDynamicChooserDialog.getWindow().setLayout(dialogWidth, i);
            return;
        }
        MediaRouteChooserDialog mediaRouteChooserDialog = (MediaRouteChooserDialog) appCompatDialog;
        mediaRouteChooserDialog.getWindow().setLayout(MediaRouteDialogHelper.getDialogWidth(mediaRouteChooserDialog.getContext()), -2);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog() {
        if (this.mUseDynamicGroup) {
            MediaRouteDynamicChooserDialog mediaRouteDynamicChooserDialog = new MediaRouteDynamicChooserDialog(getContext());
            this.mDialog = mediaRouteDynamicChooserDialog;
            ensureRouteSelector();
            mediaRouteDynamicChooserDialog.setRouteSelector(this.mSelector);
        } else {
            MediaRouteChooserDialog mediaRouteChooserDialog = new MediaRouteChooserDialog(getContext());
            this.mDialog = mediaRouteChooserDialog;
            ensureRouteSelector();
            mediaRouteChooserDialog.setRouteSelector(this.mSelector);
        }
        return this.mDialog;
    }
}
