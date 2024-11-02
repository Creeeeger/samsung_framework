.class public final Lcom/android/keyguard/KeyguardStatusContainer;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public drawAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0xff

    .line 5
    .line 6
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusContainer;->drawAlpha:I

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$dispatchDraw$s1127291599(Lcom/android/keyguard/KeyguardStatusContainer;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/keyguard/KeyguardClockFrame;->Companion:Lcom/android/keyguard/KeyguardClockFrame$Companion;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/keyguard/KeyguardStatusContainer;->drawAlpha:I

    .line 4
    .line 5
    new-instance v2, Lcom/android/keyguard/KeyguardStatusContainer$dispatchDraw$1;

    .line 6
    .line 7
    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardStatusContainer$dispatchDraw$1;-><init>(Lcom/android/keyguard/KeyguardStatusContainer;Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, v1, v2}, Lcom/android/keyguard/KeyguardClockFrame$Companion;->saveCanvasAlpha(Landroid/view/View;Landroid/graphics/Canvas;ILkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onSetAlpha(I)Z
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusContainer;->drawAlpha:I

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method
