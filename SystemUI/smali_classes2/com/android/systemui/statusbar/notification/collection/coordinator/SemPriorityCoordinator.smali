.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final mNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator$1;

    .line 5
    .line 6
    const-string v1, "SemPriority"

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;->mNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator$1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 1
    return-void
.end method
