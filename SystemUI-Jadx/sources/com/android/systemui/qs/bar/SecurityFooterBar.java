package com.android.systemui.qs.bar;

import android.content.Context;
import android.content.res.Configuration;
import android.view.ViewGroup;
import com.android.systemui.R;
import com.android.systemui.qs.QSSecurityFooter;
import com.android.systemui.statusbar.policy.SecurityControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecurityFooterBar extends BarItemImpl {
    public final QSSecurityFooter mSecurityFooter;

    public SecurityFooterBar(Context context, QSSecurityFooter qSSecurityFooter) {
        super(context);
        this.mContext = context;
        this.mSecurityFooter = qSSecurityFooter;
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final void destroy() {
        this.mCallback = null;
        this.mSecurityFooter.mVisibilityChangedListener = null;
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final int getBarLayout() {
        return R.layout.sec_security_footer_bar;
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final void onConfigChanged(Configuration configuration) {
        QSSecurityFooter qSSecurityFooter = this.mSecurityFooter;
        qSSecurityFooter.updateTextMaxWidth();
        qSSecurityFooter.mHandler.sendEmptyMessage(1);
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final void onFinishInflate() {
        ViewGroup viewGroup = (ViewGroup) this.mBarRootView.findViewById(R.id.security_footer_container);
        QSSecurityFooter qSSecurityFooter = this.mSecurityFooter;
        if (viewGroup != null) {
            viewGroup.addView(qSSecurityFooter.mView);
        }
        qSSecurityFooter.mVisibilityChangedListener = this;
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final void setListening(boolean z) {
        if (this.mListening == z) {
            return;
        }
        this.mListening = z;
        QSSecurityFooter qSSecurityFooter = this.mSecurityFooter;
        if (z) {
            ((SecurityControllerImpl) qSSecurityFooter.mSecurityController).addCallback(qSSecurityFooter.mCallback);
            qSSecurityFooter.mHandler.sendEmptyMessage(1);
            return;
        }
        ((SecurityControllerImpl) qSSecurityFooter.mSecurityController).removeCallback(qSSecurityFooter.mCallback);
    }
}
