package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class PriorityGoalRow extends ArrayRow {
    GoalVariableAccessor mAccessor;
    private SolverVariable[] mArrayGoals;
    private int mNumGoals;
    private SolverVariable[] mSortArray;

    /* renamed from: androidx.constraintlayout.core.PriorityGoalRow$1, reason: invalid class name */
    final class AnonymousClass1 implements Comparator<SolverVariable> {
        @Override // java.util.Comparator
        public final int compare(SolverVariable solverVariable, SolverVariable solverVariable2) {
            return solverVariable.id - solverVariable2.id;
        }
    }

    class GoalVariableAccessor {
        SolverVariable mVariable;

        GoalVariableAccessor() {
        }

        public final String toString() {
            String str = "[ ";
            if (this.mVariable != null) {
                for (int i = 0; i < 9; i++) {
                    StringBuilder m = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
                    m.append(this.mVariable.mGoalStrengthVector[i]);
                    m.append(" ");
                    str = m.toString();
                }
            }
            return str + "] " + this.mVariable;
        }
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.mArrayGoals = new SolverVariable[128];
        this.mSortArray = new SolverVariable[128];
        this.mNumGoals = 0;
        this.mAccessor = new GoalVariableAccessor();
    }

    private void addToGoal(SolverVariable solverVariable) {
        int i;
        int i2 = this.mNumGoals + 1;
        SolverVariable[] solverVariableArr = this.mArrayGoals;
        if (i2 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.mArrayGoals = solverVariableArr2;
            this.mSortArray = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.mArrayGoals;
        int i3 = this.mNumGoals;
        solverVariableArr3[i3] = solverVariable;
        int i4 = i3 + 1;
        this.mNumGoals = i4;
        if (i4 > 1 && solverVariableArr3[i4 - 1].id > solverVariable.id) {
            int i5 = 0;
            while (true) {
                i = this.mNumGoals;
                if (i5 >= i) {
                    break;
                }
                this.mSortArray[i5] = this.mArrayGoals[i5];
                i5++;
            }
            Arrays.sort(this.mSortArray, 0, i, new AnonymousClass1());
            for (int i6 = 0; i6 < this.mNumGoals; i6++) {
                this.mArrayGoals[i6] = this.mSortArray[i6];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeGoal(SolverVariable solverVariable) {
        int i = 0;
        while (i < this.mNumGoals) {
            if (this.mArrayGoals[i] == solverVariable) {
                while (true) {
                    int i2 = this.mNumGoals;
                    if (i >= i2 - 1) {
                        this.mNumGoals = i2 - 1;
                        solverVariable.inGoal = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.mArrayGoals;
                        int i3 = i + 1;
                        solverVariableArr[i] = solverVariableArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    public final void addError(SolverVariable solverVariable) {
        this.mAccessor.mVariable = solverVariable;
        Arrays.fill(solverVariable.mGoalStrengthVector, 0.0f);
        solverVariable.mGoalStrengthVector[solverVariable.strength] = 1.0f;
        addToGoal(solverVariable);
    }

    public final void clear() {
        this.mNumGoals = 0;
        this.mConstantValue = 0.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x004d, code lost:
    
        if (r9 < r8) goto L30;
     */
    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final androidx.constraintlayout.core.SolverVariable getPivotCandidate(boolean[] r12) {
        /*
            r11 = this;
            r0 = -1
            r1 = 0
            r3 = r0
            r2 = r1
        L4:
            int r4 = r11.mNumGoals
            if (r2 >= r4) goto L57
            androidx.constraintlayout.core.SolverVariable[] r4 = r11.mArrayGoals
            r5 = r4[r2]
            int r6 = r5.id
            boolean r6 = r12[r6]
            if (r6 == 0) goto L13
            goto L54
        L13:
            androidx.constraintlayout.core.PriorityGoalRow$GoalVariableAccessor r6 = r11.mAccessor
            r6.mVariable = r5
            r5 = 1
            r7 = 8
            if (r3 != r0) goto L36
        L1c:
            if (r7 < 0) goto L32
            androidx.constraintlayout.core.SolverVariable r4 = r6.mVariable
            float[] r4 = r4.mGoalStrengthVector
            r4 = r4[r7]
            r8 = 0
            int r9 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r9 <= 0) goto L2a
            goto L32
        L2a:
            int r4 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r4 >= 0) goto L2f
            goto L33
        L2f:
            int r7 = r7 + (-1)
            goto L1c
        L32:
            r5 = r1
        L33:
            if (r5 == 0) goto L54
            goto L53
        L36:
            r4 = r4[r3]
        L38:
            if (r7 < 0) goto L50
            float[] r8 = r4.mGoalStrengthVector
            r8 = r8[r7]
            androidx.constraintlayout.core.SolverVariable r9 = r6.mVariable
            float[] r9 = r9.mGoalStrengthVector
            r9 = r9[r7]
            int r10 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r10 != 0) goto L4b
            int r7 = r7 + (-1)
            goto L38
        L4b:
            int r4 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r4 >= 0) goto L50
            goto L51
        L50:
            r5 = r1
        L51:
            if (r5 == 0) goto L54
        L53:
            r3 = r2
        L54:
            int r2 = r2 + 1
            goto L4
        L57:
            if (r3 != r0) goto L5b
            r11 = 0
            return r11
        L5b:
            androidx.constraintlayout.core.SolverVariable[] r11 = r11.mArrayGoals
            r11 = r11[r3]
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.PriorityGoalRow.getPivotCandidate(boolean[]):androidx.constraintlayout.core.SolverVariable");
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final boolean isEmpty() {
        return this.mNumGoals == 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final String toString() {
        String str = " goal -> (" + this.mConstantValue + ") : ";
        for (int i = 0; i < this.mNumGoals; i++) {
            this.mAccessor.mVariable = this.mArrayGoals[i];
            StringBuilder m = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
            m.append(this.mAccessor);
            m.append(" ");
            str = m.toString();
        }
        return str;
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        SolverVariable solverVariable = arrayRow.mVariable;
        if (solverVariable == null) {
            return;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = arrayRowVariables.getVariable(i);
            float variableValue = arrayRowVariables.getVariableValue(i);
            GoalVariableAccessor goalVariableAccessor = this.mAccessor;
            goalVariableAccessor.mVariable = variable;
            boolean z2 = true;
            if (variable.inGoal) {
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr = goalVariableAccessor.mVariable.mGoalStrengthVector;
                    float f = (solverVariable.mGoalStrengthVector[i2] * variableValue) + fArr[i2];
                    fArr[i2] = f;
                    if (Math.abs(f) < 1.0E-4f) {
                        goalVariableAccessor.mVariable.mGoalStrengthVector[i2] = 0.0f;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    PriorityGoalRow.this.removeGoal(goalVariableAccessor.mVariable);
                }
                z2 = false;
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f2 = solverVariable.mGoalStrengthVector[i3];
                    if (f2 != 0.0f) {
                        float f3 = f2 * variableValue;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        goalVariableAccessor.mVariable.mGoalStrengthVector[i3] = f3;
                    } else {
                        goalVariableAccessor.mVariable.mGoalStrengthVector[i3] = 0.0f;
                    }
                }
            }
            if (z2) {
                addToGoal(variable);
            }
            this.mConstantValue = (arrayRow.mConstantValue * variableValue) + this.mConstantValue;
        }
        removeGoal(solverVariable);
    }
}
