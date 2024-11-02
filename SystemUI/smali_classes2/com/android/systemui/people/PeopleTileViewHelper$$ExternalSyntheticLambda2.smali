.class public final synthetic Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/app/people/PeopleSpaceTile;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/systemui/people/widget/PeopleTileKey;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->f$1:Landroid/app/people/PeopleSpaceTile;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->f$3:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->f$1:Landroid/app/people/PeopleSpaceTile;

    .line 4
    .line 5
    iget v3, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-object v6, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->f$3:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 8
    .line 9
    check-cast p1, Landroid/util/SizeF;

    .line 10
    .line 11
    new-instance p0, Lcom/android/systemui/people/PeopleTileViewHelper;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    float-to-int v4, v0

    .line 18
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    float-to-int v5, p1

    .line 23
    move-object v0, p0

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/people/PeopleTileViewHelper;-><init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IIILcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getViews()Landroid/widget/RemoteViews;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
