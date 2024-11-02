.class public final Lcom/android/systemui/keyguard/animator/PivotViewController$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$6;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

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
    .locals 4

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$6;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$6;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$6;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 23
    .line 24
    iget v2, v1, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    .line 25
    .line 26
    int-to-float v3, v2

    .line 27
    cmpg-float p1, p1, v3

    .line 28
    .line 29
    if-gez p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    add-int/2addr p0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$6;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 42
    .line 43
    iget p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    .line 44
    .line 45
    neg-int p0, p0

    .line 46
    :goto_0
    int-to-float p0, p0

    .line 47
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
