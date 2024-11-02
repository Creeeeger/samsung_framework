.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->access$handleTurnOnClick(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
