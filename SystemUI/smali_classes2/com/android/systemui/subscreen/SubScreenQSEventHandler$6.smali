.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$6;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLocaleListChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$6;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmSubScreenQsWindowViewSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmLayoutParamsSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmWindowManagerSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/view/WindowManager;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method
