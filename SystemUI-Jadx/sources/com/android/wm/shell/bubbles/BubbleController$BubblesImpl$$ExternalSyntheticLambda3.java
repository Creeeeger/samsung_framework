package com.android.wm.shell.bubbles;

import android.content.pm.UserInfo;
import com.android.wm.shell.bubbles.BubbleController;
import com.android.wm.shell.bubbles.storage.BubbleVolatileRepository;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleController$BubblesImpl$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BubbleController.BubblesImpl f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ BubbleController$BubblesImpl$$ExternalSyntheticLambda3(BubbleController.BubblesImpl bubblesImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = bubblesImpl;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        switch (this.$r8$classId) {
            case 0:
                BubbleController.BubblesImpl bubblesImpl = this.f$0;
                final int i2 = this.f$1;
                BubbleController bubbleController = BubbleController.this;
                UserInfo profileParent = bubbleController.mUserManager.getProfileParent(i2);
                if (profileParent != null) {
                    i = profileParent.getUserHandle().getIdentifier();
                } else {
                    i = -1;
                }
                BubbleData bubbleData = bubbleController.mBubbleData;
                bubbleData.getClass();
                ArrayList arrayList = new ArrayList();
                Iterator it = bubbleData.mPendingBubbles.values().iterator();
                while (true) {
                    boolean z4 = false;
                    if (it.hasNext()) {
                        Bubble bubble = (Bubble) it.next();
                        if (i2 == bubble.mUser.getIdentifier()) {
                            z4 = true;
                        }
                        if (z4) {
                            arrayList.add(bubble);
                        }
                    } else {
                        for (Bubble bubble2 : bubbleData.mSuppressedBubbles.values()) {
                            if (i2 == bubble2.mUser.getIdentifier()) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                arrayList.add(bubble2);
                            }
                        }
                        Iterator it2 = ((ArrayList) bubbleData.mBubbles).iterator();
                        while (it2.hasNext()) {
                            Bubble bubble3 = (Bubble) it2.next();
                            if (i2 == bubble3.mUser.getIdentifier()) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                arrayList.add(bubble3);
                            }
                        }
                        Iterator it3 = ((ArrayList) bubbleData.mOverflowBubbles).iterator();
                        while (it3.hasNext()) {
                            Bubble bubble4 = (Bubble) it3.next();
                            if (i2 == bubble4.mUser.getIdentifier()) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                arrayList.add(bubble4);
                            }
                        }
                        Iterator it4 = arrayList.iterator();
                        while (it4.hasNext()) {
                            bubbleData.doRemove(16, ((Bubble) it4.next()).mKey);
                        }
                        if (!arrayList.isEmpty()) {
                            bubbleData.dispatchPendingChanges();
                        }
                        BubbleDataRepository bubbleDataRepository = bubbleController.mDataRepository;
                        BubbleVolatileRepository bubbleVolatileRepository = bubbleDataRepository.volatileRepository;
                        synchronized (bubbleVolatileRepository) {
                            if (i != -1) {
                                synchronized (bubbleVolatileRepository) {
                                    if (bubbleVolatileRepository.entitiesByUser.get(i) != null) {
                                        z4 = ((List) bubbleVolatileRepository.entitiesByUser.get(i)).removeIf(new Predicate() { // from class: com.android.wm.shell.bubbles.storage.BubbleVolatileRepository$removeBubblesForUserWithParent$1
                                            @Override // java.util.function.Predicate
                                            public final boolean test(Object obj) {
                                                if (((BubbleEntity) obj).userId == i2) {
                                                    return true;
                                                }
                                                return false;
                                            }
                                        });
                                    }
                                }
                            } else {
                                List list = (List) bubbleVolatileRepository.entitiesByUser.get(i2);
                                bubbleVolatileRepository.entitiesByUser.remove(i2);
                                if (list != null) {
                                    z4 = true;
                                }
                            }
                        }
                        if (z4) {
                            bubbleDataRepository.persistToDisk();
                            return;
                        }
                        return;
                    }
                }
            default:
                BubbleController.this.onUserChanged(this.f$1);
                return;
        }
    }
}
