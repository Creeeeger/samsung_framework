package com.android.systemui.media;

import com.android.systemui.Dumpable;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecMediaPlayerData implements Dumpable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public SecMediaControlPanel firstPageView;
    public SecMediaControlPanel lastPageView;
    public final Lazy mediaData$delegate = LazyKt__LazyJVMKt.lazy(SecMediaPlayerData$mediaData$2.INSTANCE);
    public final Lazy mediaPlayers$delegate = LazyKt__LazyJVMKt.lazy(SecMediaPlayerData$mediaPlayers$2.INSTANCE);
    public final Lazy sortedMediaPlayers$delegate = LazyKt__LazyJVMKt.lazy(SecMediaPlayerData$sortedMediaPlayers$2.INSTANCE);
    public int currentPosition = -1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("mediaPlayers: " + getMediaPlayers());
        printWriter.println("mediaData: " + getMediaData());
        printWriter.println("sortedMediaPlayers: " + getSortedMediaPlayers());
    }

    public final ConcurrentHashMap getMediaData() {
        return (ConcurrentHashMap) this.mediaData$delegate.getValue();
    }

    public final HashMap getMediaPlayers() {
        return (HashMap) this.mediaPlayers$delegate.getValue();
    }

    public final ArrayList getSortedMediaPlayers() {
        return (ArrayList) this.sortedMediaPlayers$delegate.getValue();
    }

    public final int getSortedMediaPlayersSize() {
        return getSortedMediaPlayers().size();
    }
}
