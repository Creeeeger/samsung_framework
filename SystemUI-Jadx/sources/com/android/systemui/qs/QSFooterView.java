package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.systemui.qs.TouchAnimator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QSFooterView extends FrameLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public TextView mBuildText;
    public final AnonymousClass1 mDeveloperSettingsObserver;
    public View mEditButton;
    public PageIndicator mPageIndicator;

    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.qs.QSFooterView$1] */
    public QSFooterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDeveloperSettingsObserver = new ContentObserver(new Handler(((FrameLayout) this).mContext.getMainLooper())) { // from class: com.android.systemui.qs.QSFooterView.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z, Uri uri) {
                super.onChange(z, uri);
                QSFooterView qSFooterView = QSFooterView.this;
                int i = QSFooterView.$r8$clinit;
                qSFooterView.setBuildText();
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((FrameLayout) this).mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("development_settings_enabled"), false, this.mDeveloperSettingsObserver, -1);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateResources();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ((FrameLayout) this).mContext.getContentResolver().unregisterContentObserver(this.mDeveloperSettingsObserver);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mPageIndicator = (PageIndicator) findViewById(R.id.footer_page_indicator);
        this.mBuildText = (TextView) findViewById(R.id.build);
        this.mEditButton = findViewById(android.R.id.edit);
        updateResources();
        setImportantForAccessibility(1);
        setBuildText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setBuildText() {
        /*
            r6 = this;
            android.widget.TextView r0 = r6.mBuildText
            if (r0 != 0) goto L5
            return
        L5:
            android.content.Context r0 = r6.mContext
            com.samsung.android.knox.custom.SettingsManager r1 = com.samsung.android.knox.custom.SettingsManager.getInstance()
            r2 = 0
            if (r1 == 0) goto L13
            int r1 = r1.getSettingsHiddenState()
            goto L14
        L13:
            r1 = r2
        L14:
            r1 = r1 & 256(0x100, float:3.59E-43)
            r3 = 1
            if (r1 == 0) goto L1a
            goto L61
        L1a:
            android.content.Context r1 = r0.getApplicationContext()
            com.samsung.android.knox.EnterpriseDeviceManager r1 = com.samsung.android.knox.EnterpriseDeviceManager.getInstance(r1)
            if (r1 == 0) goto L2f
            com.samsung.android.knox.restriction.RestrictionPolicy r1 = r1.getRestrictionPolicy()
            boolean r1 = r1.isDeveloperModeAllowed(r2)
            if (r1 != 0) goto L2f
            goto L61
        L2f:
            java.lang.String r1 = "user"
            java.lang.Object r1 = r0.getSystemService(r1)
            android.os.UserManager r1 = (android.os.UserManager) r1
            android.content.ContentResolver r0 = r0.getContentResolver()
            java.lang.String r4 = android.os.Build.TYPE
            java.lang.String r5 = "eng"
            boolean r4 = r4.equals(r5)
            java.lang.String r5 = "development_settings_enabled"
            int r0 = android.provider.Settings.Global.getInt(r0, r5, r4)
            if (r0 == 0) goto L4e
            r0 = r3
            goto L4f
        L4e:
            r0 = r2
        L4f:
            java.lang.String r4 = "no_debugging_features"
            boolean r4 = r1.hasUserRestriction(r4)
            boolean r1 = r1.isAdminUser()
            if (r1 == 0) goto L61
            if (r4 != 0) goto L61
            if (r0 == 0) goto L61
            r0 = r3
            goto L62
        L61:
            r0 = r2
        L62:
            if (r0 == 0) goto L80
            android.widget.TextView r0 = r6.mBuildText
            android.content.Context r1 = r6.mContext
            java.lang.String r2 = android.os.Build.VERSION.RELEASE_OR_CODENAME
            java.lang.String r4 = android.os.Build.ID
            java.lang.Object[] r2 = new java.lang.Object[]{r2, r4}
            r4 = 17039963(0x104025b, float:2.424626E-38)
            java.lang.String r1 = r1.getString(r4, r2)
            r0.setText(r1)
            android.widget.TextView r6 = r6.mBuildText
            r6.setSelected(r3)
            goto L8b
        L80:
            android.widget.TextView r0 = r6.mBuildText
            r1 = 0
            r0.setText(r1)
            android.widget.TextView r6 = r6.mBuildText
            r6.setSelected(r2)
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.QSFooterView.setBuildText():void");
    }

    public final void updateResources() {
        TouchAnimator.Builder builder = new TouchAnimator.Builder();
        builder.addFloat(this.mPageIndicator, "alpha", 0.0f, 1.0f);
        builder.addFloat(this.mBuildText, "alpha", 0.0f, 1.0f);
        builder.addFloat(this.mEditButton, "alpha", 0.0f, 1.0f);
        builder.mStartDelay = 0.9f;
        builder.build();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        marginLayoutParams.bottomMargin = getResources().getDimensionPixelSize(R.dimen.qs_footers_margin_bottom);
        setLayoutParams(marginLayoutParams);
    }
}
