.class public final Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final startingUser:I

.field public final synthetic this$0:Lcom/android/systemui/controls/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/BaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/controls/BaseActivity;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 7
    .line 8
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getCurrentUserId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;->startingUser:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "onUserChanged newUser = "

    .line 8
    .line 9
    .line 10
    const-string v2, ", startingUser = "

    .line 11
    .line 12
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v2, p0, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;->startingUser:I

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eq p1, v2, :cond_0

    .line 22
    .line 23
    iget-object p1, p2, Lcom/android/systemui/controls/BaseActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 24
    .line 25
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
