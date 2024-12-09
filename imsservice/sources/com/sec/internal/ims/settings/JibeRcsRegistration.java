package com.sec.internal.ims.settings;

import android.content.Context;
import android.util.ArraySet;
import android.util.SparseArray;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.interfaces.ims.core.IJibeRcsRegistration;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.log.IMSLog;
import java.util.Collections;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class JibeRcsRegistration extends JibeRcsEnabler implements IJibeRcsRegistration {
    private static final String TAG = "JibeRcsRegistration";
    protected SparseArray<Set<IRegisterTask>> mDeRegisteringTasks;

    public JibeRcsRegistration(Context context) {
        super(context);
        this.mDeRegisteringTasks = new SparseArray<>();
    }

    @Override // com.sec.internal.interfaces.ims.core.IJibeRcsRegistration
    public void addDeRegisteringTask(final int i, IRegisterTask iRegisterTask) {
        if (isDynamicJibeSupported(i)) {
            IMSLog.i(TAG, i, iRegisterTask, "Added as deregistering task");
            ((Set) Optional.ofNullable(this.mDeRegisteringTasks.get(i)).orElseGet(new Supplier() { // from class: com.sec.internal.ims.settings.JibeRcsRegistration$$ExternalSyntheticLambda3
                @Override // java.util.function.Supplier
                public final Object get() {
                    Set lambda$addDeRegisteringTask$0;
                    lambda$addDeRegisteringTask$0 = JibeRcsRegistration.this.lambda$addDeRegisteringTask$0(i);
                    return lambda$addDeRegisteringTask$0;
                }
            })).add(iRegisterTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Set lambda$addDeRegisteringTask$0(int i) {
        ArraySet arraySet = new ArraySet();
        this.mDeRegisteringTasks.put(i, arraySet);
        return arraySet;
    }

    @Override // com.sec.internal.interfaces.ims.core.IJibeRcsRegistration
    public boolean needAwaitDeRegistered(int i) {
        if (isDynamicJibeSupported(i)) {
            return hasActiveTask(i).booleanValue();
        }
        return false;
    }

    private Boolean hasActiveTask(int i) {
        return (Boolean) Optional.of(getTasks(i)).map(new Function() { // from class: com.sec.internal.ims.settings.JibeRcsRegistration$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$hasActiveTask$1;
                lambda$hasActiveTask$1 = JibeRcsRegistration.this.lambda$hasActiveTask$1((Set) obj);
                return lambda$hasActiveTask$1;
            }
        }).orElse(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$hasActiveTask$1(Set set) {
        return Boolean.valueOf(set.stream().anyMatch(new Predicate() { // from class: com.sec.internal.ims.settings.JibeRcsRegistration$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean isTaskActive;
                isTaskActive = JibeRcsRegistration.this.isTaskActive((IRegisterTask) obj);
                return isTaskActive;
            }
        }));
    }

    private Set<IRegisterTask> getTasks(final int i) {
        return (Set) Optional.ofNullable(this.mDeRegisteringTasks).map(new Function() { // from class: com.sec.internal.ims.settings.JibeRcsRegistration$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Set lambda$getTasks$2;
                lambda$getTasks$2 = JibeRcsRegistration.lambda$getTasks$2(i, (SparseArray) obj);
                return lambda$getTasks$2;
            }
        }).orElse(Collections.emptySet());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Set lambda$getTasks$2(int i, SparseArray sparseArray) {
        return (Set) sparseArray.get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isTaskActive(IRegisterTask iRegisterTask) {
        return iRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.DEREGISTERING);
    }

    @Override // com.sec.internal.interfaces.ims.core.IJibeRcsRegistration
    public boolean needClearTasks(int i) {
        return (!isDynamicJibeSupported(i) || getTasks(i).isEmpty() || hasActiveTask(i).booleanValue()) ? false : true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IJibeRcsRegistration
    public void clearTasks(int i) {
        if (isDynamicJibeSupported(i)) {
            Optional.of(getTasks(i)).ifPresent(new Consumer() { // from class: com.sec.internal.ims.settings.JibeRcsRegistration$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((Set) obj).clear();
                }
            });
        }
    }
}
