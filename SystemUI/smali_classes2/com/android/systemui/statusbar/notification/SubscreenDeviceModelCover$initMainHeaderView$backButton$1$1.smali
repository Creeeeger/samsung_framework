.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1$1$1;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v3, 0x12c

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaAnimatedMainView(Landroid/view/View;Ljava/lang/Runnable;J)Landroid/animation/Animator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    .line 30
    .line 31
    return-void
.end method
