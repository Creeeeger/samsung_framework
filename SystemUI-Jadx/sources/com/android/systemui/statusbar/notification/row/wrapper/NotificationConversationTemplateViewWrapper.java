package com.android.systemui.statusbar.notification.row.wrapper;

import android.content.Context;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.widget.CachingIconView;
import com.android.internal.widget.ConversationLayout;
import com.android.internal.widget.MessagingGroup;
import com.android.internal.widget.MessagingImageMessage;
import com.android.internal.widget.MessagingLinearLayout;
import com.android.systemui.R;
import com.android.systemui.statusbar.ViewTransformationHelper;
import com.android.systemui.statusbar.notification.NotificationFadeAware;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationMessagingTemplateViewWrapper;
import com.android.systemui.util.ConvenienceExtensionsKt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.sequences.TransformingSequence;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationConversationTemplateViewWrapper extends NotificationTemplateViewWrapper {
    public View appName;
    public View conversationBadgeBg;
    public View conversationIconContainer;
    public CachingIconView conversationIconView;
    public final ConversationLayout conversationLayout;
    public View conversationTitleView;
    public View expandBtn;
    public View expandBtnContainer;
    public View expandIcon;
    public View facePileBottom;
    public View facePileBottomBg;
    public View facePileTop;
    public ViewGroup imageMessageContainer;
    public View importanceRing;
    public ArrayList messageContainers;
    public MessagingLinearLayout messagingLinearLayout;
    public final int minHeightWithActions;
    public View overflowNumber;

    public NotificationConversationTemplateViewWrapper(Context context, View view, ExpandableNotificationRow expandableNotificationRow) {
        super(context, view, expandableNotificationRow);
        this.minHeightWithActions = NotificationUtils.getFontScaledHeight(R.dimen.notification_messaging_actions_min_height, context);
        this.conversationLayout = (ConversationLayout) view;
    }

    @Override // com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper
    public final int getMinLayoutHeight() {
        View view = this.mActionsContainer;
        if (view != null && view.getVisibility() != 8) {
            return this.minHeightWithActions;
        }
        return 0;
    }

    @Override // com.android.systemui.statusbar.notification.row.wrapper.NotificationHeaderViewWrapper, com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper
    public final View getShelfTransformationTarget() {
        if (this.conversationLayout.isImportantConversation()) {
            CachingIconView cachingIconView = this.conversationIconView;
            if (cachingIconView == null) {
                cachingIconView = null;
            }
            if (cachingIconView.getVisibility() != 8) {
                CachingIconView cachingIconView2 = this.conversationIconView;
                if (cachingIconView2 == null) {
                    return null;
                }
                return cachingIconView2;
            }
            return this.mIcon;
        }
        return this.mIcon;
    }

    @Override // com.android.systemui.statusbar.notification.row.wrapper.NotificationTemplateViewWrapper, com.android.systemui.statusbar.notification.row.wrapper.NotificationHeaderViewWrapper, com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper
    public final void onContentUpdated(ExpandableNotificationRow expandableNotificationRow) {
        ConversationLayout conversationLayout = this.conversationLayout;
        this.messagingLinearLayout = conversationLayout.getMessagingLinearLayout();
        this.imageMessageContainer = conversationLayout.getImageMessageContainer();
        this.messageContainers = conversationLayout.getMessagingGroups();
        this.conversationIconContainer = conversationLayout.requireViewById(android.R.id.expand_button);
        this.conversationIconView = conversationLayout.requireViewById(android.R.id.exclude);
        this.conversationBadgeBg = conversationLayout.requireViewById(android.R.id.expandChallengeHandle);
        this.expandBtn = conversationLayout.requireViewById(android.R.id.gone);
        this.expandBtnContainer = conversationLayout.requireViewById(android.R.id.grant_credentials_permission_message_footer);
        this.importanceRing = conversationLayout.requireViewById(android.R.id.expand_activities_button);
        this.appName = conversationLayout.requireViewById(android.R.id.bounds);
        this.conversationTitleView = conversationLayout.requireViewById(android.R.id.expand_button_container);
        this.facePileTop = conversationLayout.findViewById(android.R.id.end);
        this.facePileBottom = conversationLayout.findViewById(android.R.id.eight);
        this.facePileBottomBg = conversationLayout.findViewById(android.R.id.email);
        this.expandIcon = conversationLayout.requireViewById(android.R.id.grant_credentials_permission_message_header);
        this.overflowNumber = conversationLayout.requireViewById(android.R.id.gravity);
        super.onContentUpdated(expandableNotificationRow);
    }

    @Override // com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper
    public final void setAnimationsRunning(boolean z) {
        ArrayList arrayList = this.messageContainers;
        ViewGroup viewGroup = null;
        if (arrayList == null) {
            arrayList = null;
        }
        TransformingSequence transformingSequence = new TransformingSequence(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(arrayList), new Function1() { // from class: com.android.systemui.statusbar.notification.row.wrapper.NotificationConversationTemplateViewWrapper$setAnimationsRunning$containers$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ((MessagingGroup) obj).getMessageContainer();
            }
        });
        ViewGroup[] viewGroupArr = new ViewGroup[1];
        ViewGroup viewGroup2 = this.imageMessageContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        }
        viewGroupArr[0] = viewGroup;
        FilteringSequence mapNotNull = SequencesKt___SequencesKt.mapNotNull(SequencesKt___SequencesKt.flatMap(SequencesKt___SequencesKt.plus(transformingSequence, SequencesKt__SequencesKt.sequenceOf(viewGroupArr)), new Function1() { // from class: com.android.systemui.statusbar.notification.row.wrapper.NotificationConversationTemplateViewWrapper$setAnimationsRunning$drawables$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ConvenienceExtensionsKt.getChildren((ViewGroup) obj);
            }
        }), new Function1() { // from class: com.android.systemui.statusbar.notification.row.wrapper.NotificationConversationTemplateViewWrapper$setAnimationsRunning$drawables$2
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
        });
        Set<AnimatedImageDrawable> linkedHashSet = new LinkedHashSet();
        Iterator it = mapNotNull.iterator();
        while (true) {
            FilteringSequence$iterator$1 filteringSequence$iterator$1 = (FilteringSequence$iterator$1) it;
            if (!filteringSequence$iterator$1.hasNext()) {
                break;
            } else {
                linkedHashSet.add(filteringSequence$iterator$1.next());
            }
        }
        int size = linkedHashSet.size();
        if (size != 0) {
            if (size == 1) {
                linkedHashSet = Collections.singleton(linkedHashSet.iterator().next());
            }
        } else {
            linkedHashSet = EmptySet.INSTANCE;
        }
        for (AnimatedImageDrawable animatedImageDrawable : linkedHashSet) {
            if (z) {
                animatedImageDrawable.start();
            } else if (!z) {
                animatedImageDrawable.stop();
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper
    public final void setNotificationFaded(boolean z) {
        View view = this.expandBtn;
        View view2 = null;
        if (view == null) {
            view = null;
        }
        NotificationFadeAware.setLayerTypeForFaded(view, z);
        View view3 = this.conversationIconContainer;
        if (view3 != null) {
            view2 = view3;
        }
        NotificationFadeAware.setLayerTypeForFaded(view2, z);
    }

    @Override // com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper
    public final void setRemoteInputVisible(boolean z) {
        this.conversationLayout.showHistoricMessages(z);
    }

    @Override // com.android.systemui.statusbar.notification.row.wrapper.NotificationHeaderViewWrapper, com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper
    public final void updateExpandability(boolean z, View.OnClickListener onClickListener, boolean z2) {
        this.conversationLayout.updateExpandability(z, onClickListener);
    }

    @Override // com.android.systemui.statusbar.notification.row.wrapper.NotificationTemplateViewWrapper, com.android.systemui.statusbar.notification.row.wrapper.NotificationHeaderViewWrapper
    public final void updateTransformedTypes() {
        super.updateTransformedTypes();
        View view = this.conversationTitleView;
        View view2 = null;
        if (view == null) {
            view = null;
        }
        ViewTransformationHelper viewTransformationHelper = this.mTransformationHelper;
        viewTransformationHelper.addTransformedView(view, 1);
        View[] viewArr = new View[2];
        MessagingLinearLayout messagingLinearLayout = this.messagingLinearLayout;
        if (messagingLinearLayout == null) {
            messagingLinearLayout = null;
        }
        viewArr[0] = messagingLinearLayout;
        View view3 = this.appName;
        if (view3 == null) {
            view3 = null;
        }
        viewArr[1] = view3;
        addTransformedViews(viewArr);
        ViewGroup viewGroup = this.imageMessageContainer;
        if (viewGroup == null) {
            viewGroup = null;
        }
        if (viewGroup != null) {
            viewTransformationHelper.setCustomTransformation(new NotificationMessagingTemplateViewWrapper.AnonymousClass1(), viewGroup.getId());
        }
        View view4 = this.overflowNumber;
        if (view4 == null) {
            view4 = null;
        }
        viewTransformationHelper.addTransformedView(view4, 7);
        View view5 = this.expandIcon;
        if (view5 == null) {
            view5 = null;
        }
        viewTransformationHelper.addTransformedView(view5, 6);
        View[] viewArr2 = new View[6];
        CachingIconView cachingIconView = this.conversationIconView;
        if (cachingIconView == null) {
            cachingIconView = null;
        }
        viewArr2[0] = cachingIconView;
        View view6 = this.conversationBadgeBg;
        if (view6 == null) {
            view6 = null;
        }
        viewArr2[1] = view6;
        View view7 = this.importanceRing;
        if (view7 != null) {
            view2 = view7;
        }
        viewArr2[2] = view2;
        viewArr2[3] = this.facePileTop;
        viewArr2[4] = this.facePileBottom;
        viewArr2[5] = this.facePileBottomBg;
        addViewsTransformingToSimilar(viewArr2);
    }
}
