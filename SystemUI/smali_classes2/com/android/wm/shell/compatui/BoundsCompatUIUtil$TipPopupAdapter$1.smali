.class public final Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$1;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onViewAttachedToWindow: v="

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$1;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->-$$Nest$fgetmViewHost(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$1;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->-$$Nest$mshowTipPopup(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "HostView is not matched with the view attached, hostView="

    .line 42
    .line 43
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$1;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->-$$Nest$fgetmViewHost(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$1;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->dismissTipPopup()V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "onViewDetachedFromWindow: v="

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method
