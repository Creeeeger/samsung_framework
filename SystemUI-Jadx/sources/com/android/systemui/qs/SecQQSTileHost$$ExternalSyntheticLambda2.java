package com.android.systemui.qs;

import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.systemui.plugins.qs.QSTile;
import java.util.ArrayList;
import java.util.Map;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecQQSTileHost$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SecQQSTileHost$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                SecQQSTileHost secQQSTileHost = (SecQQSTileHost) this.f$0;
                Map.Entry entry = (Map.Entry) obj;
                secQQSTileHost.mQSTileInstanceManager.releaseTileUsing(secQQSTileHost.mTileUsingByQQS, ((QSTile) entry.getValue()).getTileSpec());
                secQQSTileHost.mQSLogger.logTileDestroyed((String) entry.getKey(), "Tile removed at QQS");
                ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("Destroying tile: "), (String) entry.getKey(), "SecQQSTileHost");
                return;
            case 1:
                SecQQSTileHost secQQSTileHost2 = (SecQQSTileHost) this.f$0;
                Map.Entry entry2 = (Map.Entry) obj;
                secQQSTileHost2.mQSTileInstanceManager.releaseTileUsing(secQQSTileHost2.mTileUsingByQQS, ((QSTile) entry2.getValue()).getTileSpec());
                secQQSTileHost2.mQSLogger.logTileDestroyed((String) entry2.getKey(), "Tile removed at QQS");
                ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("Destroying tile: "), (String) entry2.getKey(), "SecQQSTileHost");
                return;
            default:
                ((ArrayList) this.f$0).add((String) obj);
                return;
        }
    }
}
