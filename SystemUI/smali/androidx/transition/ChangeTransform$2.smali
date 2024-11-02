.class public final Landroidx/transition/ChangeTransform$2;
.super Landroid/util/Property;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 2
    .line 3
    check-cast p2, Landroid/graphics/PointF;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 9
    .line 10
    iput p0, p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 11
    .line 12
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 13
    .line 14
    iput p0, p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
