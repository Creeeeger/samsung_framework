.class public final Lcom/android/systemui/keyguard/animator/PivotViewController$2;
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
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$2;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

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
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$2;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$2;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    .line 12
    .line 13
    int-to-float v1, p0

    .line 14
    cmpg-float p1, p1, v1

    .line 15
    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    neg-int p0, p0

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    int-to-float p0, p0

    .line 24
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
