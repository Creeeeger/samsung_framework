package com.android.wm.shell.bubbles;

import android.content.Context;
import android.content.LocusId;
import android.content.pm.LauncherApps;
import com.android.wm.shell.bubbles.Bubbles;
import com.android.wm.shell.bubbles.storage.BubbleEntity;
import com.android.wm.shell.bubbles.storage.BubblePersistentRepository;
import com.android.wm.shell.bubbles.storage.BubbleVolatileRepository;
import com.android.wm.shell.common.ShellExecutor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BubbleDataRepository {
    public Bubbles.BubbleMetadataFlagListener bubbleMetadataFlagListener;
    public final ContextScope ioScope = CoroutineScopeKt.CoroutineScope(Dispatchers.IO);
    public StandaloneCoroutine job;
    public final LauncherApps launcherApps;
    public final ShellExecutor mainExecutor;
    public final BubblePersistentRepository persistentRepository;
    public final BubbleVolatileRepository volatileRepository;

    public BubbleDataRepository(Context context, LauncherApps launcherApps, ShellExecutor shellExecutor) {
        this.launcherApps = launcherApps;
        this.mainExecutor = shellExecutor;
        this.volatileRepository = new BubbleVolatileRepository(launcherApps);
        this.persistentRepository = new BubblePersistentRepository(context);
    }

    public static List transform(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Bubble bubble = (Bubble) it.next();
            int identifier = bubble.mUser.getIdentifier();
            String str = bubble.mPackageName;
            String str2 = bubble.mMetadataShortcutId;
            BubbleEntity bubbleEntity = null;
            String str3 = null;
            if (str2 != null) {
                String str4 = bubble.mKey;
                int i = bubble.mDesiredHeight;
                int i2 = bubble.mDesiredHeightResId;
                String str5 = bubble.mTitle;
                int taskId = bubble.getTaskId();
                LocusId locusId = bubble.mLocusId;
                if (locusId != null) {
                    str3 = locusId.getId();
                }
                bubbleEntity = new BubbleEntity(identifier, str, str2, str4, i, i2, str5, taskId, str3, bubble.mIsDismissable);
            }
            if (bubbleEntity != null) {
                arrayList.add(bubbleEntity);
            }
        }
        return arrayList;
    }

    public final void persistToDisk() {
        this.job = BuildersKt.launch$default(this.ioScope, null, null, new BubbleDataRepository$persistToDisk$1(this.job, this, null), 3);
    }
}
