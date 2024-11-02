.class public final Landroidx/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array p0, p1, [J

    .line 5
    .line 6
    new-array v0, p1, [Z

    .line 7
    .line 8
    new-array p1, p1, [I

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
