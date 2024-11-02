.class Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;
.super Ljava/util/LinkedList;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StableWidthHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mWidthSum:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Integer;)Z
    .locals 2

    .line 2
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    .line 4
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v1, 0xa

    if-le p1, v1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 7
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    :cond_0
    return v0
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->add(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public final getStableWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    .line 8
    .line 9
    div-int/2addr p0, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    .line 6
    .line 7
    return-void
.end method
