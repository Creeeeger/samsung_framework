.class public final Lcom/android/systemui/decor/CoverPrivacyDotViewController$cameraTransitionCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/CoverPrivacyDotViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$cameraTransitionCallback$1;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$cameraTransitionCallback$1;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/16 v9, 0xfb

    .line 17
    .line 18
    invoke-static/range {v0 .. v9}, Lcom/android/systemui/decor/CoverViewState;->copy$default(Lcom/android/systemui/decor/CoverViewState;ZZZZIILandroid/view/View;Ljava/lang/String;I)Lcom/android/systemui/decor/CoverViewState;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p0, p2}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->setNextViewState(Lcom/android/systemui/decor/CoverViewState;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    monitor-exit p1

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit p1

    .line 31
    throw p0
.end method

.method public final onHideCameraProtection()V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$cameraTransitionCallback$1;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/16 v10, 0xfb

    .line 17
    .line 18
    invoke-static/range {v1 .. v10}, Lcom/android/systemui/decor/CoverViewState;->copy$default(Lcom/android/systemui/decor/CoverViewState;ZZZZIILandroid/view/View;Ljava/lang/String;I)Lcom/android/systemui/decor/CoverViewState;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v1}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->setNextViewState(Lcom/android/systemui/decor/CoverViewState;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0

    .line 31
    throw p0
.end method
