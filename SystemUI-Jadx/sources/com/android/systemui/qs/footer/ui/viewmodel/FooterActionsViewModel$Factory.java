package com.android.systemui.qs.footer.ui.viewmodel;

import android.content.Context;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.qs.footer.domain.interactor.FooterActionsInteractor;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FooterActionsViewModel$Factory {
    public final FalsingManager falsingManager;

    public FooterActionsViewModel$Factory(Context context, FalsingManager falsingManager, FooterActionsInteractor footerActionsInteractor, Provider provider, boolean z) {
        this.falsingManager = falsingManager;
    }
}
