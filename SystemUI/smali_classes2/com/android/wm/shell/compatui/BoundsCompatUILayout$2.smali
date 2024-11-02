.class public final Lcom/android/wm/shell/compatui/BoundsCompatUILayout$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

.field public final synthetic val$btn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;Landroid/widget/ImageButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$2;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$2;->val$btn:Landroid/widget/ImageButton;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$2;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->access$000(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    const p2, 0x7f010195

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const p2, 0x7f010196

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$2;->val$btn:Landroid/widget/ImageButton;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    const/4 p0, 0x0

    .line 40
    return p0
.end method
