package com.android.systemui.statusbar.notification.stack;

import android.view.View;
import android.widget.ImageView;
import com.android.systemui.media.controls.ui.KeyguardMediaController;
import com.android.systemui.statusbar.notification.NotificationSectionsFeatureManager;
import com.android.systemui.statusbar.notification.SourceType;
import com.android.systemui.statusbar.notification.SourceType$Companion$from$1;
import com.android.systemui.statusbar.notification.collection.render.MediaContainerController;
import com.android.systemui.statusbar.notification.collection.render.SectionHeaderController;
import com.android.systemui.statusbar.notification.collection.render.SectionHeaderNodeControllerImpl;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableView;
import com.android.systemui.statusbar.notification.stack.NotificationRoundnessManager;
import com.android.systemui.statusbar.notification.stack.StackScrollAlgorithm;
import com.android.systemui.statusbar.policy.ConfigurationController;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationSectionsManager implements StackScrollAlgorithm.SectionProvider {
    public static final SourceType$Companion$from$1 SECTION;
    public final SectionHeaderController alertingHeaderController;
    public final ConfigurationController configurationController;
    public final NotificationSectionsManager$configurationListener$1 configurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationSectionsManager$configurationListener$1
        @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
        public final void onLocaleListChanged() {
            NotificationSectionsManager.this.reinflateViews();
        }
    };
    public final SectionHeaderController incomingHeaderController;
    public boolean initialized;
    public final NotificationRoundnessManager notificationRoundnessManager;
    public NotificationStackScrollLayout parent;
    public final SectionHeaderController peopleHeaderController;
    public NotificationRoundnessManager.SectionStateProvider sectionStateProvider;
    public final NotificationSectionsFeatureManager sectionsFeatureManager;
    public final SectionHeaderController silentHeaderController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class SectionBounds {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class Many extends SectionBounds {
            public final ExpandableView first;
            public final ExpandableView last;

            public Many(ExpandableView expandableView, ExpandableView expandableView2) {
                super(null);
                this.first = expandableView;
                this.last = expandableView2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Many)) {
                    return false;
                }
                Many many = (Many) obj;
                if (Intrinsics.areEqual(this.first, many.first) && Intrinsics.areEqual(this.last, many.last)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return this.last.hashCode() + (this.first.hashCode() * 31);
            }

            public final String toString() {
                return "Many(first=" + this.first + ", last=" + this.last + ")";
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class None extends SectionBounds {
            public static final None INSTANCE = new None();

            private None() {
                super(null);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class One extends SectionBounds {
            public final ExpandableView lone;

            public One(ExpandableView expandableView) {
                super(null);
                this.lone = expandableView;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof One) && Intrinsics.areEqual(this.lone, ((One) obj).lone)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return this.lone.hashCode();
            }

            public final String toString() {
                return "One(lone=" + this.lone + ")";
            }
        }

        private SectionBounds() {
        }

        public /* synthetic */ SectionBounds(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static boolean setFirstAndLastVisibleChildren(NotificationSection notificationSection, ExpandableView expandableView, ExpandableView expandableView2) {
            boolean z;
            boolean z2;
            if (notificationSection.mFirstVisibleChild != expandableView) {
                z = true;
            } else {
                z = false;
            }
            notificationSection.mFirstVisibleChild = expandableView;
            if (notificationSection.mLastVisibleChild != expandableView2) {
                z2 = true;
            } else {
                z2 = false;
            }
            notificationSection.mLastVisibleChild = expandableView2;
            if (z || z2) {
                return true;
            }
            return false;
        }
    }

    static {
        new Companion(null);
        SourceType.Companion.getClass();
        SECTION = new SourceType$Companion$from$1("Section");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.statusbar.notification.stack.NotificationSectionsManager$configurationListener$1] */
    public NotificationSectionsManager(ConfigurationController configurationController, KeyguardMediaController keyguardMediaController, NotificationSectionsFeatureManager notificationSectionsFeatureManager, MediaContainerController mediaContainerController, NotificationRoundnessManager notificationRoundnessManager, SectionHeaderController sectionHeaderController, SectionHeaderController sectionHeaderController2, SectionHeaderController sectionHeaderController3, SectionHeaderController sectionHeaderController4) {
        this.configurationController = configurationController;
        this.sectionsFeatureManager = notificationSectionsFeatureManager;
        this.notificationRoundnessManager = notificationRoundnessManager;
        this.incomingHeaderController = sectionHeaderController;
        this.peopleHeaderController = sectionHeaderController2;
        this.alertingHeaderController = sectionHeaderController3;
        this.silentHeaderController = sectionHeaderController4;
    }

    public final boolean beginsSection(View view, View view2) {
        if (view != ((SectionHeaderNodeControllerImpl) this.peopleHeaderController)._view && view != ((SectionHeaderNodeControllerImpl) this.alertingHeaderController)._view && view != ((SectionHeaderNodeControllerImpl) this.incomingHeaderController)._view && (Intrinsics.areEqual(getBucket(view), getBucket(view2)) || Intrinsics.areEqual(view, ((SectionHeaderNodeControllerImpl) this.silentHeaderController)._view))) {
            return false;
        }
        return true;
    }

    public final Integer getBucket(View view) {
        if (view == ((SectionHeaderNodeControllerImpl) this.silentHeaderController)._view) {
            return 9;
        }
        if (view == ((SectionHeaderNodeControllerImpl) this.incomingHeaderController)._view) {
            return 4;
        }
        if (view == ((SectionHeaderNodeControllerImpl) this.peopleHeaderController)._view) {
            return 7;
        }
        if (view == ((SectionHeaderNodeControllerImpl) this.alertingHeaderController)._view) {
            return 8;
        }
        if (view instanceof ExpandableNotificationRow) {
            return Integer.valueOf(((ExpandableNotificationRow) view).mEntry.mBucket);
        }
        return null;
    }

    public final NotificationRoundnessManager.SectionStateProvider getSectionStateProvider() {
        NotificationRoundnessManager.SectionStateProvider sectionStateProvider = this.sectionStateProvider;
        if (sectionStateProvider != null) {
            return sectionStateProvider;
        }
        return null;
    }

    public final void reinflateViews() {
        boolean hasNotifications;
        NotificationStackScrollLayout notificationStackScrollLayout = this.parent;
        NotificationStackScrollLayout notificationStackScrollLayout2 = null;
        if (notificationStackScrollLayout == null) {
            notificationStackScrollLayout = null;
        }
        SectionHeaderController sectionHeaderController = this.silentHeaderController;
        ((SectionHeaderNodeControllerImpl) sectionHeaderController).reinflateView(notificationStackScrollLayout);
        NotificationStackScrollLayout notificationStackScrollLayout3 = this.parent;
        if (notificationStackScrollLayout3 == null) {
            notificationStackScrollLayout3 = null;
        }
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = notificationStackScrollLayout3.mController;
        int i = 0;
        if (notificationStackScrollLayoutController == null) {
            hasNotifications = false;
        } else {
            hasNotifications = notificationStackScrollLayoutController.hasNotifications(2, true);
        }
        SectionHeaderView sectionHeaderView = ((SectionHeaderNodeControllerImpl) sectionHeaderController)._view;
        Intrinsics.checkNotNull(sectionHeaderView);
        ImageView imageView = sectionHeaderView.mClearAllButton;
        if (!hasNotifications) {
            i = 8;
        }
        imageView.setVisibility(i);
        NotificationStackScrollLayout notificationStackScrollLayout4 = this.parent;
        if (notificationStackScrollLayout4 == null) {
            notificationStackScrollLayout4 = null;
        }
        ((SectionHeaderNodeControllerImpl) this.alertingHeaderController).reinflateView(notificationStackScrollLayout4);
        NotificationStackScrollLayout notificationStackScrollLayout5 = this.parent;
        if (notificationStackScrollLayout5 == null) {
            notificationStackScrollLayout5 = null;
        }
        ((SectionHeaderNodeControllerImpl) this.peopleHeaderController).reinflateView(notificationStackScrollLayout5);
        NotificationStackScrollLayout notificationStackScrollLayout6 = this.parent;
        if (notificationStackScrollLayout6 != null) {
            notificationStackScrollLayout2 = notificationStackScrollLayout6;
        }
        ((SectionHeaderNodeControllerImpl) this.incomingHeaderController).reinflateView(notificationStackScrollLayout2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0185, code lost:
    
        r2.requestTopRoundness(1.0f, r10, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01e3, code lost:
    
        r2.requestBottomRoundness(1.0f, r10, false);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean updateFirstAndLastViewsForAllSections(com.android.systemui.statusbar.notification.stack.NotificationSection[] r13, java.util.List r14) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationSectionsManager.updateFirstAndLastViewsForAllSections(com.android.systemui.statusbar.notification.stack.NotificationSection[], java.util.List):boolean");
    }

    public static /* synthetic */ void getAlertingHeaderView$annotations() {
    }

    public static /* synthetic */ void getIncomingHeaderView$annotations() {
    }

    public static /* synthetic */ void getMediaControlsView$annotations() {
    }

    public static /* synthetic */ void getPeopleHeaderView$annotations() {
    }

    public static /* synthetic */ void getSilentHeaderView$annotations() {
    }
}
