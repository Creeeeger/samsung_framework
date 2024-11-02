.class public final Landroidx/slice/core/SliceQuery$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/slice/core/SliceQuery$Filter;


# instance fields
.field public final synthetic val$format:Ljava/lang/String;

.field public final synthetic val$subtype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/core/SliceQuery$5;->val$format:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/slice/core/SliceQuery$5;->val$subtype:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final filter(Landroidx/slice/SliceItem;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$5;->val$format:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iget-object p0, p0, Landroidx/slice/core/SliceQuery$5;->val$subtype:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move p0, v0

    .line 27
    :goto_1
    if-eqz p0, :cond_2

    .line 28
    .line 29
    move v1, v0

    .line 30
    :cond_2
    return v1
.end method
