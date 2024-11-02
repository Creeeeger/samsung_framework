package com.android.systemui.blur;

import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import android.util.Log;
import android.view.SemBlurInfo;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecCoverBlurController implements ConfigurationController.ConfigurationListener, SettingsHelper.OnChangedCallback {
    public final QSColorCurve mColorCurve;
    public final Context mContext;
    public boolean mIsBlurReduced;
    public final View mRootView;

    public SecCoverBlurController(Context context, View view) {
        this.mContext = context;
        this.mRootView = view;
        this.mColorCurve = new QSColorCurve(context);
        ((ConfigurationControllerImpl) ((ConfigurationController) Dependency.get(ConfigurationController.class))).addCallback(this);
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).registerCallback(this, Settings.System.getUriFor("accessibility_reduce_transparency"));
        updateIsBlurReduced();
    }

    public final void applyBlur() {
        View view = this.mRootView;
        if (view == null) {
            Log.w("SecCoverBlurController", "applyBlur: rootView is null");
            return;
        }
        if (this.mIsBlurReduced) {
            Log.d("SecCoverBlurController", "blockBlur");
            view.setBackgroundDrawable(this.mContext.getResources().getDrawable(R.drawable.subscreen_quickpanel_bg));
            view.semSetBlurInfo(null);
        } else {
            Log.d("SecCoverBlurController", "doWindowBlur");
            view.setBackgroundDrawable(null);
            QSColorCurve qSColorCurve = this.mColorCurve;
            qSColorCurve.setFraction(1.0f);
            view.semSetBlurInfo(new SemBlurInfo.Builder(0).setRadius((int) qSColorCurve.radius).setColorCurve(qSColorCurve.saturation, qSColorCurve.curve, qSColorCurve.minX, qSColorCurve.maxX, qSColorCurve.minY, qSColorCurve.maxY).setBackgroundCornerRadius(40.0f, 40.0f, 40.0f, 40.0f).build());
        }
    }

    @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
    public final void onChanged(Uri uri) {
        if (uri == null || !Settings.System.getUriFor("accessibility_reduce_transparency").equals(uri)) {
            return;
        }
        updateIsBlurReduced();
        applyBlur();
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onUiModeChanged() {
        applyBlur();
    }

    public final void updateIsBlurReduced() {
        boolean z = false;
        if (Settings.System.getInt(this.mContext.getContentResolver(), "accessibility_reduce_transparency", 0) != 0) {
            z = true;
        }
        this.mIsBlurReduced = z;
        ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("updateIsBlurReduced: "), this.mIsBlurReduced, "SecCoverBlurController");
    }
}
