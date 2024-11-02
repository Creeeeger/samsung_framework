package com.android.systemui.qs;

import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import android.util.Log;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.qs.SecQSPanel;
import com.android.systemui.util.SettingsHelper;
import dagger.Lazy;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSButtonGridController {
    public static final float BUTTON_WIDTH_MAX_RATIO;
    public static final float BUTTON_WIDTH_MIN_RATIO;
    public final Lazy mQSPanelControllerLazy;
    public final Uri[] mSettingsValueList = {Settings.Global.getUriFor("quickstar_qs_tile_layout_custom_matrix"), Settings.Global.getUriFor("quickstar_qs_tile_layout_custom_matrix_width")};
    public final AnonymousClass1 mSettingListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.qs.QSButtonGridController.1
        @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
        public final void onChanged(Uri uri) {
            SecQSPanel.QSTileLayout qSTileLayout = ((SecQSPanelController) QSButtonGridController.this.mQSPanelControllerLazy.get()).mTileLayout;
            if (qSTileLayout == null) {
                return;
            }
            Log.d("QSButtonGridController", "settingsHelper onChanged() Settings:" + QSButtonGridController.isQSButtonGridPopupEnabled());
            if (QSButtonGridController.isQSButtonGridPopupEnabled()) {
                PagedTileLayout pagedTileLayout = (PagedTileLayout) qSTileLayout;
                ((TileLayout) ((ArrayList) pagedTileLayout.mSecPagedTileLayout.pagesSupplier.get()).get(0)).mLastCellWidth = 0;
                int intValue = ((SettingsHelper) Dependency.get(SettingsHelper.class)).mItemLists.get("quickstar_qs_tile_layout_custom_matrix_width").getIntValue();
                float f = QSButtonGridController.BUTTON_WIDTH_MAX_RATIO;
                float f2 = QSButtonGridController.BUTTON_WIDTH_MIN_RATIO;
                float f3 = (f - f2) / 10.0f;
                float min = Math.min(Math.max(Math.round((f - (intValue * f3)) * 1000.0f) / 1000.0f, f2), f);
                Log.d("QSButtonGridController", "QUICKSTAR_QS_TILE_LAYOUT_CUSTOM_MATRIX result[P:" + intValue + ", R:" + min + "] dP:" + QSButtonGridController.getDefaultProgress() + ", iR:" + f3 + ", cDR:" + (f - (QSButtonGridController.getDefaultProgress() * f3)));
                pagedTileLayout.updateTileWidth(min);
                return;
            }
            ((PagedTileLayout) qSTileLayout).updateTileWidth(1.0f);
        }
    };

    static {
        float f;
        float f2;
        boolean z = QpRune.QUICK_TABLET;
        if (z) {
            f = 1.41f;
        } else {
            f = 1.52f;
        }
        BUTTON_WIDTH_MAX_RATIO = f;
        if (z) {
            f2 = 0.62f;
        } else {
            f2 = 0.76f;
        }
        BUTTON_WIDTH_MIN_RATIO = f2;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.systemui.qs.QSButtonGridController$1] */
    public QSButtonGridController(Context context, Lazy lazy) {
        this.mQSPanelControllerLazy = lazy;
    }

    public static int getDefaultProgress() {
        float f = BUTTON_WIDTH_MAX_RATIO;
        return Math.min(Math.max(Math.round((f - 1.0f) / ((f - BUTTON_WIDTH_MIN_RATIO) / 10.0f)), 0), 10);
    }

    public static boolean isQSButtonGridPopupEnabled() {
        return ((SettingsHelper) Dependency.get(SettingsHelper.class)).isQSButtonGridPopupEnabled();
    }
}
