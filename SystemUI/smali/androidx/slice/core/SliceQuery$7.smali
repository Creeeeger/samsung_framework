.class public final Landroidx/slice/core/SliceQuery$7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/slice/core/SliceQuery$Filter;


# instance fields
.field public final synthetic val$format:Ljava/lang/String;

.field public final synthetic val$hints:[Ljava/lang/String;

.field public final synthetic val$nonHints:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/core/SliceQuery$7;->val$format:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/slice/core/SliceQuery$7;->val$hints:[Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/slice/core/SliceQuery$7;->val$nonHints:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final filter(Landroidx/slice/SliceItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$7;->val$format:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$7;->val$hints:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/slice/core/SliceQuery$7;->val$nonHints:[Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method
