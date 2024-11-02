.class public final Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final context:Landroid/content/Context;

.field public final indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public needToApplyForCoverPaddings:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final updateCoverMargin(IZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->needToApplyForCoverPaddings:Z

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p2, v2

    .line 10
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->needToApplyForCoverPaddings:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const p2, 0x7f07019d

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->needToApplyForCoverPaddings:Z

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    move v2, p1

    .line 30
    :cond_1
    if-eq p2, v0, :cond_2

    .line 31
    .line 32
    const-string/jumbo p1, "updateCoverMargin() prvCovered: "

    .line 33
    .line 34
    .line 35
    const-string v1, " >>> mNeedToApplyForCoverPaddings: "

    .line 36
    .line 37
    const-string v3, " ,getDefaultSidePadding(): "

    .line 38
    .line 39
    invoke-static {p1, v0, v1, p2, v3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "IndicatorCoverManager"

    .line 44
    .line 45
    invoke-static {p1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 49
    .line 50
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPhoneStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method
