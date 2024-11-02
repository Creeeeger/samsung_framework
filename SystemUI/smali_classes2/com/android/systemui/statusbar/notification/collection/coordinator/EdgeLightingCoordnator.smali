.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final secFGSFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator$secFGSFilter$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator$secFGSFilter$1;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator$secFGSFilter$1;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator;->secFGSFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator$secFGSFilter$1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator;->secFGSFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator$secFGSFilter$1;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
