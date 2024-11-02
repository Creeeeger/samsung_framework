.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $scrollContainer:Landroid/widget/ScrollView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;->$scrollContainer:Landroid/widget/ScrollView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "MORE"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;->$scrollContainer:Landroid/widget/ScrollView;

    .line 14
    .line 15
    const/16 p1, 0x82

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->access$handleTurnOnClick(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
