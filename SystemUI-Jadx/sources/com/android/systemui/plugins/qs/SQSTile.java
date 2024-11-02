package com.android.systemui.plugins.qs;

import com.android.systemui.plugins.annotations.Dependencies;
import com.android.systemui.plugins.annotations.DependsOn;
import com.android.systemui.plugins.annotations.ProvidesInterface;
import com.android.systemui.plugins.qs.QSTile;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@Dependencies({@DependsOn(target = QSIconView.class), @DependsOn(target = QSTile.Callback.class), @DependsOn(target = QSTile.Icon.class), @DependsOn(target = QSTile.State.class)})
@ProvidesInterface(version = 4)
/* loaded from: classes2.dex */
public interface SQSTile extends QSTile {
    public static final int VERSION = 4;

    @Override // com.android.systemui.plugins.qs.QSTile
    DetailAdapter getDetailAdapter();

    String getTileMapKey();

    void sendTileStatusLog();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @ProvidesInterface(version = 2)
    /* loaded from: classes2.dex */
    public interface SCallback extends QSTile.Callback {
        default void onAnnouncementRequested(CharSequence charSequence) {
        }

        default void onScanStateChanged(boolean z) {
        }

        default void onShowDetail(boolean z) {
        }

        default void onToggleStateChanged(boolean z) {
        }

        default void onUpdateDetail() {
        }

        default void onScrollToDetail(int i, int i2) {
        }
    }
}
