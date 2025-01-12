
// Copyright (C) 2013-2018 University of Amsterdam
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
// You should have received a copy of the GNU Affero General Public
// License along with this program.  If not, see
// <http://www.gnu.org/licenses/>.
//

import QtQuick 									2.8
import QtQuick.Layouts 							1.3
import JASP.Controls 							1.0
import JASP.Widgets 							1.0

Form
{
	columns:									1

	VariablesForm
	{
		id:										variablesForm

		AvailableVariablesList
		{
			name:								"variablesForm"
		}

		AssignedVariablesList
		{
			name:								"parts"
			title:								qsTr("Parts")
			singleVariable:						true
			allowedColumns:						["nominal", "nominalText", "ordinal","scale"]
		}

		AssignedVariablesList
		{
			name:								"measurements"
			title:								qsTr("Measurement")
			singleVariable:						true
			allowedColumns:						["nominal", "nominalText", "ordinal","scale"]
		}

		AssignedVariablesList
		{
			name:								"standard"
			title:								qsTr("Standard")
			singleVariable:						true
			allowedColumns:						["nominal", "nominalText", "ordinal","scale"]
		}
	}

	Group
	{
		title: 									qsTr("Analysis Options")

		CheckBox
		{
			name: 								"LBtableLinearity"
			label: 								qsTr("Linearity table")
			checked: 							true
		}

		CheckBox
		{
			name: 								"LBtableBias"
			label: 								qsTr("Bias table")
			checked:							true
		}
	}

	Group
	{
		title:									qsTr("Plots")

		CheckBox
		{
			name:								"LBgraph"
			label:								qsTr("Linearity and bias graph")
			checked:							true
		}

		CheckBox
		{
			name: 								"LBpercentGraph"
			label: 								qsTr("Percent process variation graph")
			checked: 							true
		}
	}

	Group
	{
	title: qsTr("Optional")

	    CheckBox
		{
			name: 								"EnablePV"
			label: 								qsTr("Process variation")
			childrenOnSameRow: 				true

			DoubleField
		  {
			  name: 								"linearityProcessVariation"
		  	defaultValue:					6
		  	negativeValues:				false
			  decimals: 						5
		  	fieldWidth: 					50
		  }
		}
	}
}
