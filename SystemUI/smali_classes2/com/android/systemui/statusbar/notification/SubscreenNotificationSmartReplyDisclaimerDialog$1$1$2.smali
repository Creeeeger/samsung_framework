.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic $scrollContainer:Landroid/widget/ScrollView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$2;->$scrollContainer:Landroid/widget/ScrollView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$2;->$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$2;->$scrollContainer:Landroid/widget/ScrollView;

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
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$2;->$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method
