.class public final Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p2, p6, :cond_0

    .line 2
    .line 3
    if-eq p4, p8, :cond_1

    .line 4
    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->access$updateCallChipRect(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V

    .line 8
    .line 9
    .line 10
    :cond_1
    return-void
.end method
