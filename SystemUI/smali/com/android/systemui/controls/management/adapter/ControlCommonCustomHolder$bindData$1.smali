.class public final Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $ci:Lcom/android/systemui/controls/ControlInterface;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;Lcom/android/systemui/controls/ControlInterface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->$ci:Lcom/android/systemui/controls/ControlInterface;

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
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favorite:Landroid/widget/CheckBox;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->updateFavorite(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->$ci:Lcom/android/systemui/controls/ControlInterface;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getControlId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favorite:Landroid/widget/CheckBox;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-void
.end method
