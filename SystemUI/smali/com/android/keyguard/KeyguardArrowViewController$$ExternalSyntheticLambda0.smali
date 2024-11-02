.class public final synthetic Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardArrowViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardArrowViewController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardArrowViewController;

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
    iget p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrowGD:Landroid/view/GestureDetector;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrowGD:Landroid/view/GestureDetector;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
