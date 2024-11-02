.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 2
    .line 3
    check-cast p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 4
    .line 5
    iget p0, p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    .line 6
    .line 7
    iget p1, p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    .line 8
    .line 9
    sub-int/2addr p0, p1

    .line 10
    return p0
.end method
