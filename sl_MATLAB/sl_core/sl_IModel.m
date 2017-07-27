%> @file    sl_IModel.m
%> @author  Christoph Dinh <christoph.dinh@live.de>
%> @version	1.0
%> @date	July, 2012
%>
%> @section	LICENSE
%>
%> Copyright (C) 2012 Christoph Dinh. All rights reserved.
%>
%> No part of this program may be photocopied, reproduced,
%> or translated to another program language without the
%> prior written consent of the author.
%>
%> @brief   ToDo File description
% =========================================================================
%> @brief   ToDo Summary of this class
%
%> ToDo Detailed explanation
% =========================================================================

classdef sl_IModel < handle
    %SL_IMODEL Summary of this class goes here
    %   Detailed explanation goes here
    properties
        %m_GPUDevice
    end
    
    methods (Abstract, Static)
        type = Type()
        name = Name()
    end
    
    methods (Static)
        %% load 
        % =================================================================
        %> @brief ToDo
        %>
        %> ToDo 
        %>
        %> @return ToDo
        % =================================================================
        function obj = load(filename)
            t_result = load(filename);
            %isa
            obj = t_result.obj;
    	end
    end

    methods
        %% save 
        % =================================================================
        %> @brief ToDo
        %>
        %> ToDo 
        %>
        %> @param obj Instance of the class object
        %> @param filename ToDo
        %>
        %> @return ToDo
        % =================================================================
        function save(obj,filename)
            save(filename,'obj');
        end
    end

end

