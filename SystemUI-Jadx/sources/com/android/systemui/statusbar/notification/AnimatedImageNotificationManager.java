package com.android.systemui.statusbar.notification;

import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.internal.widget.ConversationLayout;
import com.android.internal.widget.MessagingGroup;
import com.android.internal.widget.MessagingImageMessage;
import com.android.internal.widget.MessagingLayout;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.inflation.BindEventManager;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.NotificationContentView;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.util.ConvenienceExtensionsKt;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.EmptySequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AnimatedImageNotificationManager {
    public final BindEventManager bindEventManager;
    public final HeadsUpManager headsUpManager;
    public boolean isStatusBarExpanded;
    public final CommonNotifCollection notifCollection;
    public final StatusBarStateController statusBarStateController;

    public AnimatedImageNotificationManager(CommonNotifCollection commonNotifCollection, BindEventManager bindEventManager, HeadsUpManager headsUpManager, StatusBarStateController statusBarStateController) {
        this.notifCollection = commonNotifCollection;
        this.bindEventManager = bindEventManager;
        this.headsUpManager = headsUpManager;
        this.statusBarStateController = statusBarStateController;
    }

    public static final void access$updateAnimatedImageDrawables(AnimatedImageNotificationManager animatedImageNotificationManager, NotificationEntry notificationEntry) {
        boolean z;
        Sequence sequence;
        animatedImageNotificationManager.getClass();
        ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
        if (expandableNotificationRow != null) {
            if (!expandableNotificationRow.mIsHeadsUp && !animatedImageNotificationManager.isStatusBarExpanded) {
                z = false;
            } else {
                z = true;
            }
            NotificationContentView[] notificationContentViewArr = expandableNotificationRow.mLayouts;
            NotificationContentView[] notificationContentViewArr2 = (NotificationContentView[]) Arrays.copyOf(notificationContentViewArr, notificationContentViewArr.length);
            if (notificationContentViewArr2 == null || (sequence = ArraysKt___ArraysKt.asSequence(notificationContentViewArr2)) == null) {
                sequence = EmptySequence.INSTANCE;
            }
            FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(SequencesKt___SequencesKt.mapNotNull(SequencesKt___SequencesKt.flatMap(SequencesKt___SequencesKt.flatMap(SequencesKt___SequencesKt.flatMap(sequence, new Function1() { // from class: com.android.systemui.statusbar.notification.AnimatedImageNotificationManager$updateAnimatedImageDrawables$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    NotificationContentView notificationContentView = (NotificationContentView) obj;
                    return ArraysKt___ArraysKt.asSequence(new View[]{notificationContentView.mContractedChild, notificationContentView.mHeadsUpChild, notificationContentView.mExpandedChild, notificationContentView.mSingleLineView});
                }
            }), new Function1() { // from class: com.android.systemui.statusbar.notification.AnimatedImageNotificationManager$updateAnimatedImageDrawables$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ConversationLayout conversationLayout;
                    ArrayList messagingGroups;
                    ArrayList messagingGroups2;
                    ConversationLayout conversationLayout2 = (View) obj;
                    MessagingLayout messagingLayout = null;
                    if (conversationLayout2 instanceof ConversationLayout) {
                        conversationLayout = conversationLayout2;
                    } else {
                        conversationLayout = null;
                    }
                    if (conversationLayout != null && (messagingGroups2 = conversationLayout.getMessagingGroups()) != null) {
                        return new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(messagingGroups2);
                    }
                    if (conversationLayout2 instanceof MessagingLayout) {
                        messagingLayout = (MessagingLayout) conversationLayout2;
                    }
                    if (messagingLayout != null && (messagingGroups = messagingLayout.getMessagingGroups()) != null) {
                        return new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(messagingGroups);
                    }
                    return EmptySequence.INSTANCE;
                }
            }), new Function1() { // from class: com.android.systemui.statusbar.notification.AnimatedImageNotificationManager$updateAnimatedImageDrawables$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ConvenienceExtensionsKt.getChildren(((MessagingGroup) obj).getMessageContainer());
                }
            }), new Function1() { // from class: com.android.systemui.statusbar.notification.AnimatedImageNotificationManager$updateAnimatedImageDrawables$5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    MessagingImageMessage messagingImageMessage;
                    MessagingImageMessage messagingImageMessage2 = (View) obj;
                    if (messagingImageMessage2 instanceof MessagingImageMessage) {
                        messagingImageMessage = messagingImageMessage2;
                    } else {
                        messagingImageMessage = null;
                    }
                    if (messagingImageMessage == null) {
                        return null;
                    }
                    Drawable drawable = messagingImageMessage.getDrawable();
                    if (!(drawable instanceof AnimatedImageDrawable)) {
                        return null;
                    }
                    return (AnimatedImageDrawable) drawable;
                }
            }));
            while (filteringSequence$iterator$1.hasNext()) {
                AnimatedImageDrawable animatedImageDrawable = (AnimatedImageDrawable) filteringSequence$iterator$1.next();
                if (z) {
                    animatedImageDrawable.start();
                } else {
                    animatedImageDrawable.stop();
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
