.class public final Lcom/android/systemui/ShelfToolTipManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final THRESHOLD_COUNT:I

.field public alreadyToolTipShown:Z

.field public final buttonLocation:[I

.field public isFullyExpanded:Z

.field public isTappedNotiSettings:Z

.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public final mContext:Landroid/content/Context;

.field public mIsQsExpanded:Z

.field public mJustBeginToOpen:Z

.field public final mNotiSettingContainer:Landroid/widget/LinearLayout;

.field public mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

.field public final mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public panelExpandedCount:I

.field public final panelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/ShelfToolTipManager;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/ShelfToolTipManager;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/ShelfToolTipManager;->panelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/android/systemui/ShelfToolTipManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 13
    .line 14
    const/16 p3, 0xc8

    .line 15
    .line 16
    iput p3, p0, Lcom/android/systemui/ShelfToolTipManager;->THRESHOLD_COUNT:I

    .line 17
    .line 18
    const/4 p3, -0x1

    .line 19
    iput p3, p0, Lcom/android/systemui/ShelfToolTipManager;->panelExpandedCount:I

    .line 20
    .line 21
    const/4 p3, 0x2

    .line 22
    new-array p3, p3, [I

    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/systemui/ShelfToolTipManager;->buttonLocation:[I

    .line 25
    .line 26
    new-instance p3, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1;

    .line 27
    .line 28
    invoke-direct {p3, p0}, Lcom/android/systemui/ShelfToolTipManager$bootAnimationFinishedListener$1;-><init>(Lcom/android/systemui/ShelfToolTipManager;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip()V

    .line 32
    .line 33
    .line 34
    const-string p4, "NotificationSettingsToolTipShown"

    .line 35
    .line 36
    const/4 p5, 0x0

    .line 37
    invoke-static {p1, p4, p5}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/ShelfToolTipManager;->alreadyToolTipShown:Z

    .line 42
    .line 43
    iget-object p1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const p2, 0x7f0a075c

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x0

    .line 60
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingContainer:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    check-cast p6, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    .line 63
    .line 64
    invoke-virtual {p6, p3}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final calculatePosition()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/ShelfToolTipManager;->buttonLocation:[I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aget v3, v1, v3

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    div-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    add-int/2addr v0, v3

    .line 35
    const/4 v3, 0x1

    .line 36
    aget v1, v1, v3

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const v3, 0x7f070a36

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    add-int/2addr p0, v1

    .line 52
    invoke-virtual {v2, v0, p0}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public final hasBottomClippedNotiRow()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    float-to-int v2, v2

    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v1, v2

    .line 23
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMaxHeight:I

    .line 26
    .line 27
    if-ne v1, p0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_1
    return v0
.end method

.method public final releaseToolTip()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
