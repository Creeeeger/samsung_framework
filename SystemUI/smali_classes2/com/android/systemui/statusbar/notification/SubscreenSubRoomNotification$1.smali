.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2
    .line 3
    iget-boolean p3, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsScrollByMe:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget p3, p1, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    iput-boolean v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsScrollByMe:Z

    .line 13
    .line 14
    new-instance p3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v1, 0x12c

    .line 20
    .line 21
    invoke-virtual {p1, p3, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :cond_1
    const/4 p0, -0x1

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    move p3, p0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager$1()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 46
    .line 47
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    :goto_0
    iput p3, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewFirstVisibleItemPosition:I

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager$1()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    :goto_1
    iput p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewLastVisibleItemPosition:I

    .line 67
    .line 68
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 69
    .line 70
    if-eqz p0, :cond_4

    .line 71
    .line 72
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showAIReply()V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method
