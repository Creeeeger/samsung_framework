package com.android.systemui.plugins.qs;

import android.content.Context;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.annotations.Dependencies;
import com.android.systemui.plugins.annotations.DependsOn;
import com.android.systemui.plugins.annotations.ProvidesInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@Dependencies({@DependsOn(target = QSTile.class), @DependsOn(target = QSTileView.class)})
@ProvidesInterface(action = QSFactory.ACTION, version = 2)
/* loaded from: classes2.dex */
public interface QSFactory extends Plugin {
    public static final String ACTION = "com.android.systemui.action.PLUGIN_QS_FACTORY";
    public static final int VERSION = 2;

    QSTileView createCoverScreenTileView(Context context, QSTile qSTile, boolean z);

    QSTile createTile(String str);

    QSTileView createTileView(Context context, QSTile qSTile, boolean z);

    default boolean isSystemTile(String str) {
        return false;
    }
}
