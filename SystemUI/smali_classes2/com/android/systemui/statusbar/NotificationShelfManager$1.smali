.class public final Lcom/android/systemui/statusbar/NotificationShelfManager$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShelfManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 4
    .line 5
    cmpg-float p1, p1, v0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->isFullyExpanded:Z

    .line 15
    .line 16
    if-eq v0, p1, :cond_1

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->isFullyExpanded:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingContainer:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationShelfManager;->startButtonAnimation(Landroid/view/View;Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->isFullyExpanded:Z

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->startButtonAnimation(Landroid/view/View;Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
