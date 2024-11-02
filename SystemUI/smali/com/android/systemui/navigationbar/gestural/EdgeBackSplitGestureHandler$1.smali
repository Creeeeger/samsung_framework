.class public final synthetic Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/TwoFingerSwipeGestureDetector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 4
    .line 5
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;Landroid/view/TwoFingerSwipeGestureDetector;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
