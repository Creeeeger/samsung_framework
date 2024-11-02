package com.android.systemui.qs.customize.setting;

import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.activity.ComponentActivity;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.qs.customize.SecQSCustomizer;
import com.android.systemui.qs.customize.SecQSCustomizerBase;
import com.android.systemui.qs.customize.SecQSCustomizerController;
import com.android.systemui.qs.customize.SecQSCustomizerTileAdapter;
import com.android.systemui.qs.customize.SecQSTopCustomizer;
import com.android.systemui.util.SystemUIAnalytics;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SecQSSettingEditTilesActivity extends ComponentActivity {
    public float currentDensity;
    public SecQSCustomizerController customizerController;
    public final SecQSSettingEditResources editResources;
    public boolean isTopEdit;

    public SecQSSettingEditTilesActivity(SecQSSettingEditResources secQSSettingEditResources) {
        this.editResources = secQSSettingEditResources;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b3, code lost:
    
        if (r3 != false) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0049  */
    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void attachBaseContext(android.content.Context r8) {
        /*
            r7 = this;
            com.android.systemui.qs.customize.setting.SecQSSettingEditResources r0 = r7.editResources
            boolean r0 = r0.isCurrentTopEdit
            r7.isTopEdit = r0
            android.view.IWindowManager r0 = android.view.WindowManagerGlobal.getWindowManagerService()
            android.content.res.Resources r1 = r8.getResources()
            android.util.DisplayMetrics r1 = r1.getDisplayMetrics()
            android.view.Display r2 = r8.getDisplay()
            if (r2 == 0) goto L2f
            if (r0 == 0) goto L27
            int r2 = r2.getDisplayId()
            int r0 = r0.getInitialDisplayDensity(r2)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            goto L28
        L27:
            r0 = 0
        L28:
            if (r0 == 0) goto L2f
            int r0 = r0.intValue()
            goto L31
        L2f:
            int r0 = android.util.DisplayMetrics.DENSITY_DEVICE_STABLE
        L31:
            android.content.res.Configuration r2 = new android.content.res.Configuration
            r2.<init>()
            android.content.res.Resources r3 = r8.getResources()
            android.content.res.Configuration r3 = r3.getConfiguration()
            r2.setTo(r3)
            float r3 = r1.density
            r7.currentDensity = r3
            boolean r3 = com.android.systemui.QpRune.QUICK_TABLET
            if (r3 == 0) goto Lb5
            boolean r3 = r7.isTopEdit
            if (r3 != 0) goto Lb2
            android.content.res.Resources r3 = r8.getResources()
            android.content.res.Configuration r3 = r3.getConfiguration()
            int r3 = r3.orientation
            r4 = 2
            if (r3 == r4) goto L5b
            goto Lb2
        L5b:
            android.content.res.Resources r3 = r8.getResources()
            r4 = 2131168195(0x7f070bc3, float:1.7950685E38)
            int r3 = r3.getDimensionPixelSize(r4)
            android.content.res.Resources r4 = r8.getResources()
            r5 = 2131168197(0x7f070bc5, float:1.795069E38)
            int r4 = r4.getDimensionPixelSize(r5)
            int r4 = r4 + r3
            int r4 = r4 * 4
            android.content.res.Resources r3 = r8.getResources()
            r5 = 2131168173(0x7f070bad, float:1.795064E38)
            int r3 = r3.getDimensionPixelSize(r5)
            int r3 = r3 + r4
            android.content.res.Resources r4 = r8.getResources()
            r5 = 2131169867(0x7f07124b, float:1.7954076E38)
            int r4 = r4.getDimensionPixelSize(r5)
            android.content.res.Resources r5 = r8.getResources()
            r6 = 2131167592(0x7f070968, float:1.7949462E38)
            int r5 = r5.getDimensionPixelSize(r6)
            android.content.res.Resources r6 = r8.getResources()
            android.util.DisplayMetrics r6 = r6.getDisplayMetrics()
            int r6 = r6.heightPixels
            int r6 = r6 - r4
            int r6 = r6 - r5
            if (r6 >= r3) goto Lb2
            android.content.res.Resources r3 = r8.getResources()
            android.util.DisplayMetrics r3 = r3.getDisplayMetrics()
            float r3 = r3.density
            r7.currentDensity = r3
            r3 = 0
            goto Lb3
        Lb2:
            r3 = 1
        Lb3:
            if (r3 != 0) goto Lbf
        Lb5:
            int r1 = r1.densityDpi
            if (r1 == r0) goto Lbf
            r2.densityDpi = r0
            android.content.Context r8 = r8.createConfigurationContext(r2)
        Lbf:
            super.attachBaseContext(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.customize.setting.SecQSSettingEditTilesActivity.attachBaseContext(android.content.Context):void");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        SecQSCustomizerController secQSCustomizerController = this.customizerController;
        if (secQSCustomizerController == null) {
            secQSCustomizerController = null;
        }
        secQSCustomizerController.startClosingAnim();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z;
        int i;
        SecQSCustomizerBase secQSCustomizer;
        boolean z2 = QpRune.QUICK_TABLET;
        if (!z2) {
            setRequestedOrientation(1);
        }
        super.onCreate(bundle);
        setContentView(R.layout.qs_setting_tiles_edit_activity);
        View decorView = getWindow().getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        if ((getApplicationContext().getResources().getConfiguration().uiMode & 48) == 32) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = systemUiVisibility & (-17);
        } else {
            i = systemUiVisibility | 16;
        }
        if (!z2) {
            decorView.setSystemUiVisibility(i);
        }
        getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.android.systemui.qs.customize.setting.SecQSSettingEditTilesActivity$onCreate$2
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                boolean z3;
                int i2;
                float f = SecQSSettingEditTilesActivity.this.getResources().getDisplayMetrics().density;
                SecQSSettingEditTilesActivity secQSSettingEditTilesActivity = SecQSSettingEditTilesActivity.this;
                secQSSettingEditTilesActivity.editResources.getClass();
                int bottomPadding = SecQSSettingEditResources.getBottomPadding(secQSSettingEditTilesActivity, windowInsets);
                int dimensionPixelSize = SecQSSettingEditTilesActivity.this.getResources().getDimensionPixelSize(R.dimen.status_bar_height);
                SecQSSettingEditTilesActivity secQSSettingEditTilesActivity2 = SecQSSettingEditTilesActivity.this;
                float f2 = secQSSettingEditTilesActivity2.currentDensity;
                if (f == f2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (!z3) {
                    bottomPadding = (int) ((bottomPadding / f) * f2);
                    dimensionPixelSize = (int) ((dimensionPixelSize / f) * f2);
                }
                View requireViewById = secQSSettingEditTilesActivity2.requireViewById(R.id.edit_navigation_bar_view);
                if (requireViewById != null) {
                    if (QpRune.QUICK_TABLET) {
                        requireViewById.setBackgroundColor(0);
                    }
                    requireViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, bottomPadding));
                }
                View requireViewById2 = SecQSSettingEditTilesActivity.this.requireViewById(R.id.edit_status_bar_view);
                if (requireViewById2 != null) {
                    requireViewById2.setLayoutParams(new LinearLayout.LayoutParams(-1, dimensionPixelSize));
                }
                View requireViewById3 = SecQSSettingEditTilesActivity.this.requireViewById(R.id.qs_customize_panel_buttons_parent);
                Resources resources = requireViewById3.getResources();
                boolean z4 = QpRune.QUICK_TABLET;
                if (z4) {
                    i2 = R.dimen.qs_edit_tablet_available_area_bottom;
                } else {
                    i2 = R.dimen.qs_edit_available_area_bottom;
                }
                int dimensionPixelOffset = resources.getDimensionPixelOffset(i2);
                ViewGroup.LayoutParams layoutParams = requireViewById3.getLayoutParams();
                layoutParams.height = requireViewById3.getResources().getDimensionPixelOffset(R.dimen.qs_edit_buttons_height) + dimensionPixelOffset;
                requireViewById3.setLayoutParams(layoutParams);
                requireViewById3.setPadding(requireViewById3.getPaddingLeft(), requireViewById3.getPaddingTop(), requireViewById3.getPaddingRight(), dimensionPixelOffset);
                if (z4) {
                    requireViewById3.setBackgroundColor(0);
                    requireViewById3.setBackground(requireViewById3.getResources().getDrawable(R.drawable.qs_edit_panel_available_background_bottom, null));
                }
                SecQSSettingEditTilesActivity secQSSettingEditTilesActivity3 = SecQSSettingEditTilesActivity.this;
                secQSSettingEditTilesActivity3.editResources.getClass();
                int sidePadding = SecQSSettingEditResources.getSidePadding(secQSSettingEditTilesActivity3);
                SecQSSettingEditTilesActivity secQSSettingEditTilesActivity4 = SecQSSettingEditTilesActivity.this;
                secQSSettingEditTilesActivity4.editResources.getClass();
                view.setPadding(sidePadding, 0, SecQSSettingEditResources.getSidePadding(secQSSettingEditTilesActivity4), 0);
                return WindowInsets.CONSUMED;
            }
        });
        if (this.isTopEdit) {
            secQSCustomizer = new SecQSTopCustomizer(this);
        } else {
            secQSCustomizer = new SecQSCustomizer(this);
        }
        secQSCustomizer.setOrientation(1);
        secQSCustomizer.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 1;
        Unit unit = Unit.INSTANCE;
        addContentView(secQSCustomizer, layoutParams);
        SecQSCustomizerController secQSCustomizerController = new SecQSCustomizerController(secQSCustomizer, this.editResources, this.isTopEdit);
        this.customizerController = secQSCustomizerController;
        secQSCustomizerController.init();
        SecQSCustomizerController secQSCustomizerController2 = this.customizerController;
        if (secQSCustomizerController2 == null) {
            secQSCustomizerController2 = null;
        }
        SecQSSettingEditTilesActivity$onCreate$5 secQSSettingEditTilesActivity$onCreate$5 = new SecQSSettingEditTilesActivity$onCreate$5(this);
        if (!((SecQSCustomizerBase) secQSCustomizerController2.mView).isShown()) {
            final SecQSCustomizerBase secQSCustomizerBase = (SecQSCustomizerBase) secQSCustomizerController2.mView;
            if (!secQSCustomizerBase.isShown) {
                Log.d("SecQSCustomizerBase", "show customizer");
                secQSCustomizerBase.isShown = true;
                secQSCustomizerBase.setVisibility(0);
                SystemUIAnalytics.sendScreenViewLog("QPP102");
                LinearLayout linearLayout = (LinearLayout) secQSCustomizerBase.findViewById(R.id.qs_customizer_top_summary);
                secQSCustomizerBase.mSummary = linearLayout;
                if (linearLayout != null) {
                    linearLayout.postDelayed(new Runnable() { // from class: com.android.systemui.qs.customize.SecQSCustomizerBase$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            SecQSCustomizerBase.this.mSummary.setSelected(true);
                        }
                    }, 500L);
                }
            }
            secQSCustomizerController2.mDoneCallBack = secQSSettingEditTilesActivity$onCreate$5;
        }
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.semAddExtensionFlags(16777216);
        getWindow().setAttributes(attributes);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        SecQSCustomizerController secQSCustomizerController = this.customizerController;
        if (secQSCustomizerController == null) {
            secQSCustomizerController = null;
        }
        boolean isChangingConfigurations = isChangingConfigurations();
        SecQSCustomizerTileAdapter secQSCustomizerTileAdapter = secQSCustomizerController.mTileAdapter;
        if (secQSCustomizerTileAdapter != null) {
            secQSCustomizerTileAdapter.saveTiles(secQSCustomizerController.mActiveTileLayout, secQSCustomizerController.mAvailableTileLayout, !isChangingConfigurations);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.editResources.isPhoneLandscape()) {
            setResult(-1);
            finish();
        }
    }
}
