package com.android.systemui.statusbar;

import android.R;
import android.app.Notification;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.internal.widget.CachingIconView;
import com.android.internal.widget.ConversationLayout;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.NotificationContentView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationGroupingUtil {
    public static final AppNameApplicator APP_NAME_APPLICATOR;
    public static final AppNameComparator APP_NAME_COMPARATOR;
    public static final BadgeComparator BADGE_COMPARATOR;
    public static final TextViewComparator TEXT_VIEW_COMPARATOR;
    public static final VisibilityApplicator VISIBILITY_APPLICATOR;
    public final HashSet mDividers;
    public final ArrayList mProcessors;
    public final ExpandableNotificationRow mRow;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AppNameApplicator extends VisibilityApplicator {
        public /* synthetic */ AppNameApplicator(int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.NotificationGroupingUtil.VisibilityApplicator, com.android.systemui.statusbar.NotificationGroupingUtil.ResultApplicator
        public final void apply(View view, View view2, boolean z, boolean z2) {
            if (z2 && (view instanceof ConversationLayout)) {
                z = ((ConversationLayout) view).shouldHideAppName();
            }
            super.apply(view, view2, z, z2);
        }

        private AppNameApplicator() {
            super(0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AppNameComparator extends TextViewComparator {
        public /* synthetic */ AppNameComparator(int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.NotificationGroupingUtil.TextViewComparator, com.android.systemui.statusbar.NotificationGroupingUtil.ViewComparator
        public final boolean compare(View view, View view2, Object obj, Object obj2) {
            if (isEmpty(view2)) {
                return true;
            }
            return super.compare(view, view2, obj, obj2);
        }

        private AppNameComparator() {
            super(0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class BadgeComparator implements ViewComparator {
        private BadgeComparator() {
        }

        public /* synthetic */ BadgeComparator(int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.NotificationGroupingUtil.ViewComparator
        public final boolean compare(View view, View view2, Object obj, Object obj2) {
            if (view.getVisibility() != 8) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.statusbar.NotificationGroupingUtil.ViewComparator
        public final boolean isEmpty(View view) {
            if ((view instanceof ImageView) && ((ImageView) view).getDrawable() == null) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DataExtractor {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class IconComparator implements ViewComparator {
        private IconComparator() {
        }

        public /* synthetic */ IconComparator(int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.NotificationGroupingUtil.ViewComparator
        public boolean compare(View view, View view2, Object obj, Object obj2) {
            return false;
        }

        @Override // com.android.systemui.statusbar.NotificationGroupingUtil.ViewComparator
        public final boolean isEmpty(View view) {
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LeftIconApplicator implements ResultApplicator {
        public static final int[] MARGIN_ADJUSTED_VIEWS = {16909857, R.id.chronometer, R.id.title, R.id.search_view, R.id.search_mag_icon};

        private LeftIconApplicator() {
        }

        public /* synthetic */ LeftIconApplicator(int i) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x00c5 A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0055  */
        @Override // com.android.systemui.statusbar.NotificationGroupingUtil.ResultApplicator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void apply(android.view.View r5, android.view.View r6, boolean r7, boolean r8) {
            /*
                r4 = this;
                r4 = 16909239(0x10203b7, float:2.3879894E-38)
                android.view.View r4 = r6.findViewById(r4)
                android.widget.ImageView r4 = (android.widget.ImageView) r4
                if (r4 != 0) goto Lc
                return
            Lc:
                r5 = 16909565(0x10204fd, float:2.3880808E-38)
                android.view.View r5 = r6.findViewById(r5)
                android.widget.ImageView r5 = (android.widget.ImageView) r5
                r8 = 1
                r0 = 0
                if (r5 == 0) goto L2c
                java.lang.Integer r1 = java.lang.Integer.valueOf(r8)
                r2 = 16909838(0x102060e, float:2.3881573E-38)
                java.lang.Object r2 = r5.getTag(r2)
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L2c
                r1 = r8
                goto L2d
            L2c:
                r1 = r0
            L2d:
                java.lang.Integer r2 = java.lang.Integer.valueOf(r8)
                r3 = 16909844(0x1020614, float:2.388159E-38)
                java.lang.Object r3 = r4.getTag(r3)
                boolean r2 = r2.equals(r3)
                if (r2 == 0) goto L4f
                r2 = 0
                if (r5 != 0) goto L43
                r3 = r2
                goto L47
            L43:
                android.graphics.drawable.Drawable r3 = r5.getDrawable()
            L47:
                if (r7 == 0) goto L4c
                if (r1 != 0) goto L4c
                r2 = r3
            L4c:
                r4.setImageDrawable(r2)
            L4f:
                r2 = 8
                if (r7 == 0) goto L55
                r3 = r0
                goto L56
            L55:
                r3 = r2
            L56:
                r4.setVisibility(r3)
                if (r5 == 0) goto Lc5
                if (r1 != 0) goto L5f
                if (r7 != 0) goto L66
            L5f:
                android.graphics.drawable.Drawable r4 = r5.getDrawable()
                if (r4 == 0) goto L66
                goto L67
            L66:
                r8 = r0
            L67:
                if (r8 == 0) goto L6a
                r2 = r0
            L6a:
                r5.setVisibility(r2)
                int[] r4 = com.android.systemui.statusbar.NotificationGroupingUtil.LeftIconApplicator.MARGIN_ADJUSTED_VIEWS
            L6f:
                r5 = 5
                if (r0 >= r5) goto Lc5
                r5 = r4[r0]
                android.view.View r5 = r6.findViewById(r5)
                if (r5 != 0) goto L7b
                goto Lc2
            L7b:
                boolean r7 = r5 instanceof com.android.internal.widget.ImageFloatingTextView
                if (r7 == 0) goto L85
                com.android.internal.widget.ImageFloatingTextView r5 = (com.android.internal.widget.ImageFloatingTextView) r5
                r5.setHasImage(r8)
                goto Lc2
            L85:
                if (r8 == 0) goto L8b
                r7 = 16909841(0x1020611, float:2.3881581E-38)
                goto L8e
            L8b:
                r7 = 16909840(0x1020610, float:2.388158E-38)
            L8e:
                java.lang.Object r7 = r5.getTag(r7)
                java.lang.Integer r7 = (java.lang.Integer) r7
                if (r7 != 0) goto L97
                goto Lc2
            L97:
                android.content.res.Resources r1 = r5.getResources()
                android.util.DisplayMetrics r1 = r1.getDisplayMetrics()
                int r7 = r7.intValue()
                int r7 = android.util.TypedValue.complexToDimensionPixelOffset(r7, r1)
                boolean r1 = r5 instanceof android.view.NotificationHeaderView
                if (r1 == 0) goto Lb1
                android.view.NotificationHeaderView r5 = (android.view.NotificationHeaderView) r5
                r5.setTopLineExtraMarginEnd(r7)
                goto Lc2
            Lb1:
                android.view.ViewGroup$LayoutParams r1 = r5.getLayoutParams()
                boolean r2 = r1 instanceof android.view.ViewGroup.MarginLayoutParams
                if (r2 == 0) goto Lc2
                r2 = r1
                android.view.ViewGroup$MarginLayoutParams r2 = (android.view.ViewGroup.MarginLayoutParams) r2
                r2.setMarginEnd(r7)
                r5.setLayoutParams(r1)
            Lc2:
                int r0 = r0 + 1
                goto L6f
            Lc5:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.NotificationGroupingUtil.LeftIconApplicator.apply(android.view.View, android.view.View, boolean, boolean):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Processor {
        public final ResultApplicator mApplicator;
        public boolean mApply;
        public final ViewComparator mComparator;
        public final DataExtractor mExtractor;
        public final int mId;
        public Object mParentData;
        public final ExpandableNotificationRow mParentRow;
        public View mParentView;

        public Processor(ExpandableNotificationRow expandableNotificationRow, int i, DataExtractor dataExtractor, ViewComparator viewComparator, ResultApplicator resultApplicator) {
            this.mId = i;
            this.mExtractor = dataExtractor;
            this.mApplicator = resultApplicator;
            this.mComparator = viewComparator;
            this.mParentRow = expandableNotificationRow;
        }

        public final void apply(ExpandableNotificationRow expandableNotificationRow, boolean z) {
            boolean z2;
            if (this.mApply && !z) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (expandableNotificationRow.mIsSummaryWithChildren) {
                applyToView(expandableNotificationRow.getNotificationViewWrapper().getNotificationHeader(), z2, z);
                return;
            }
            applyToView(expandableNotificationRow.mPrivateLayout.mContractedChild, z2, z);
            applyToView(expandableNotificationRow.mPrivateLayout.mHeadsUpChild, z2, z);
            applyToView(expandableNotificationRow.mPrivateLayout.mExpandedChild, z2, z);
        }

        public final void applyToView(View view, boolean z, boolean z2) {
            View findViewById;
            if (view != null && (findViewById = view.findViewById(this.mId)) != null && !this.mComparator.isEmpty(findViewById)) {
                this.mApplicator.apply(view, findViewById, z, z2);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface ResultApplicator {
        void apply(View view, View view2, boolean z, boolean z2);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class TextViewComparator implements ViewComparator {
        private TextViewComparator() {
        }

        public /* synthetic */ TextViewComparator(int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.NotificationGroupingUtil.ViewComparator
        public boolean compare(View view, View view2, Object obj, Object obj2) {
            CharSequence text;
            TextView textView = (TextView) view;
            if (textView == null) {
                text = "";
            } else {
                text = textView.getText();
            }
            return Objects.equals(text, ((TextView) view2).getText());
        }

        @Override // com.android.systemui.statusbar.NotificationGroupingUtil.ViewComparator
        public final boolean isEmpty(View view) {
            if (view != null && !TextUtils.isEmpty(((TextView) view).getText())) {
                return false;
            }
            return true;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface ViewComparator {
        boolean compare(View view, View view2, Object obj, Object obj2);

        boolean isEmpty(View view);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class VisibilityApplicator implements ResultApplicator {
        private VisibilityApplicator() {
        }

        public /* synthetic */ VisibilityApplicator(int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.NotificationGroupingUtil.ResultApplicator
        public void apply(View view, View view2, boolean z, boolean z2) {
            int i;
            if (z) {
                i = 8;
            } else {
                i = 0;
            }
            view2.setVisibility(i);
        }
    }

    static {
        int i = 0;
        TEXT_VIEW_COMPARATOR = new TextViewComparator(i);
        APP_NAME_COMPARATOR = new AppNameComparator(i);
        BADGE_COMPARATOR = new BadgeComparator(i);
        VISIBILITY_APPLICATOR = new VisibilityApplicator(i);
        APP_NAME_APPLICATOR = new AppNameApplicator(i);
        new LeftIconApplicator(i);
        new DataExtractor() { // from class: com.android.systemui.statusbar.NotificationGroupingUtil.1
        };
        new IconComparator() { // from class: com.android.systemui.statusbar.NotificationGroupingUtil.2
            @Override // com.android.systemui.statusbar.NotificationGroupingUtil.IconComparator, com.android.systemui.statusbar.NotificationGroupingUtil.ViewComparator
            public final boolean compare(View view, View view2, Object obj, Object obj2) {
                boolean z;
                Notification notification2 = (Notification) obj;
                Notification notification3 = (Notification) obj2;
                if (!notification2.getSmallIcon().sameAs(notification3.getSmallIcon())) {
                    return false;
                }
                if (notification2.color == notification3.color) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    return false;
                }
                return true;
            }
        };
        new IconComparator() { // from class: com.android.systemui.statusbar.NotificationGroupingUtil.3
            @Override // com.android.systemui.statusbar.NotificationGroupingUtil.IconComparator, com.android.systemui.statusbar.NotificationGroupingUtil.ViewComparator
            public final boolean compare(View view, View view2, Object obj, Object obj2) {
                boolean z;
                Notification notification2 = (Notification) obj;
                Notification notification3 = (Notification) obj2;
                if (!notification2.getSmallIcon().sameAs(notification3.getSmallIcon())) {
                    return true;
                }
                if (notification2.color == notification3.color) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
                return false;
            }
        };
        new ResultApplicator() { // from class: com.android.systemui.statusbar.NotificationGroupingUtil.4
            @Override // com.android.systemui.statusbar.NotificationGroupingUtil.ResultApplicator
            public final void apply(View view, View view2, boolean z, boolean z2) {
                CachingIconView findViewById = view2.findViewById(R.id.icon);
                if (findViewById != null) {
                    findViewById.setGrayedOut(z);
                }
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public NotificationGroupingUtil(com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r18) {
        /*
            r17 = this;
            r0 = r17
            r7 = r18
            r17.<init>()
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            r0.mProcessors = r8
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            r0.mDividers = r1
            r0.mRow = r7
            com.android.systemui.statusbar.NotificationGroupingUtil$Processor r9 = new com.android.systemui.statusbar.NotificationGroupingUtil$Processor
            r3 = 16909501(0x10204bd, float:2.3880629E-38)
            r10 = 0
            com.android.systemui.statusbar.NotificationGroupingUtil$BadgeComparator r5 = com.android.systemui.statusbar.NotificationGroupingUtil.BADGE_COMPARATOR
            com.android.systemui.statusbar.NotificationGroupingUtil$VisibilityApplicator r16 = com.android.systemui.statusbar.NotificationGroupingUtil.VISIBILITY_APPLICATOR
            r4 = 0
            r1 = r9
            r2 = r18
            r6 = r16
            r1.<init>(r2, r3, r4, r5, r6)
            r8.add(r9)
            com.android.systemui.statusbar.NotificationGroupingUtil$Processor r9 = new com.android.systemui.statusbar.NotificationGroupingUtil$Processor
            r3 = 16908798(0x10201fe, float:2.3878658E-38)
            com.android.systemui.statusbar.NotificationGroupingUtil$AppNameComparator r5 = com.android.systemui.statusbar.NotificationGroupingUtil.APP_NAME_COMPARATOR
            com.android.systemui.statusbar.NotificationGroupingUtil$AppNameApplicator r6 = com.android.systemui.statusbar.NotificationGroupingUtil.APP_NAME_APPLICATOR
            r1 = r9
            r4 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            r8.add(r9)
            boolean r1 = r7.mIsGroupHeaderContainAtMark
            if (r1 == 0) goto L43
            goto L5c
        L43:
            com.android.systemui.statusbar.notification.row.NotificationContentView[] r1 = r7.mLayouts
            int r2 = r1.length
            java.lang.Object[] r1 = java.util.Arrays.copyOf(r1, r2)
            com.android.systemui.statusbar.notification.row.NotificationContentView[] r1 = (com.android.systemui.statusbar.notification.row.NotificationContentView[]) r1
            int r2 = r1.length
            r3 = 0
            r4 = r3
        L4f:
            if (r4 >= r2) goto L61
            r5 = r1[r4]
            boolean r6 = r5.mIsContractedHeaderContainAtMark
            if (r6 == 0) goto L58
            goto L5c
        L58:
            boolean r5 = r5.mIsExpandedHeaderContainAtMark
            if (r5 == 0) goto L5e
        L5c:
            r3 = 1
            goto L61
        L5e:
            int r4 = r4 + 1
            goto L4f
        L61:
            if (r3 != 0) goto L76
            java.util.ArrayList r1 = r0.mProcessors
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r12 = r0.mRow
            r13 = 16909123(0x1020343, float:2.387957E-38)
            com.android.systemui.statusbar.NotificationGroupingUtil$Processor r2 = new com.android.systemui.statusbar.NotificationGroupingUtil$Processor
            r14 = 0
            com.android.systemui.statusbar.NotificationGroupingUtil$TextViewComparator r15 = com.android.systemui.statusbar.NotificationGroupingUtil.TEXT_VIEW_COMPARATOR
            r11 = r2
            r11.<init>(r12, r13, r14, r15, r16)
            r1.add(r2)
        L76:
            java.util.HashSet r1 = r0.mDividers
            r2 = 16909124(0x1020344, float:2.3879572E-38)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1.add(r2)
            java.util.HashSet r1 = r0.mDividers
            r2 = 16909126(0x1020346, float:2.3879578E-38)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1.add(r2)
            java.util.HashSet r0 = r0.mDividers
            r1 = 16909895(0x1020647, float:2.3881733E-38)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.add(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.NotificationGroupingUtil.<init>(com.android.systemui.statusbar.notification.row.ExpandableNotificationRow):void");
    }

    public final void sanitizeTopLine(ViewGroup viewGroup, ExpandableNotificationRow expandableNotificationRow) {
        boolean z;
        if (viewGroup == null) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        View findViewById = viewGroup.findViewById(16909891);
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 < childCount) {
                View childAt = viewGroup.getChildAt(i2);
                if ((childAt instanceof TextView) && childAt.getVisibility() != 8 && !this.mDividers.contains(Integer.valueOf(childAt.getId())) && childAt != findViewById) {
                    z = true;
                    break;
                }
                i2++;
            } else {
                z = false;
                break;
            }
        }
        if (z && !expandableNotificationRow.mEntry.mSbn.getNotification().showsTime()) {
            i = 8;
        }
        findViewById.setVisibility(i);
    }

    public final void sanitizeTopLineViews(ExpandableNotificationRow expandableNotificationRow) {
        if (expandableNotificationRow.mIsSummaryWithChildren) {
            sanitizeTopLine(expandableNotificationRow.getNotificationViewWrapper().getNotificationHeader(), expandableNotificationRow);
            return;
        }
        NotificationContentView notificationContentView = expandableNotificationRow.mPrivateLayout;
        View view = notificationContentView.mContractedChild;
        if (view != null) {
            sanitizeTopLine((ViewGroup) view.findViewById(R.id.serial_number), expandableNotificationRow);
        }
        View view2 = notificationContentView.mHeadsUpChild;
        if (view2 != null) {
            sanitizeTopLine((ViewGroup) view2.findViewById(R.id.serial_number), expandableNotificationRow);
        }
        View view3 = notificationContentView.mExpandedChild;
        if (view3 != null) {
            sanitizeTopLine((ViewGroup) view3.findViewById(R.id.serial_number), expandableNotificationRow);
        }
    }
}
